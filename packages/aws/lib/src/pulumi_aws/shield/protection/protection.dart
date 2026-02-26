import 'package:pulumi/pulumi.dart';
import 'protection_args.dart';

/// Enables AWS Shield Advanced for a specific AWS resource.
/// The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone.
///
/// ## Example Usage
///
/// ### Create protection
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({});
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const example = new aws.ec2.Eip("example", {domain: "vpc"});
/// const exampleProtection = new aws.shield.Protection("example", {
/// name: "example",
/// resourceArn: pulumi.all([current, currentGetCallerIdentity, example.id]).apply(([current, currentGetCallerIdentity, id]) => `arn:aws:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${id}`),
/// tags: {
/// Environment: "Dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// example = aws.ec2.Eip("example", domain="vpc")
/// example_protection = aws.shield.Protection("example",
/// name="example",
/// resource_arn=example.id.apply(lambda id: f"arn:aws:ec2:{current.region}:{current_get_caller_identity.account_id}:eip-allocation/{id}"),
/// tags={
/// "Environment": "Dev",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke();
///
/// var current = Aws.GetRegion.Invoke();
///
/// var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.Ec2.Eip("example", new()
/// {
/// Domain = "vpc",
/// });
///
/// var exampleProtection = new Aws.Shield.Protection("example", new()
/// {
/// Name = "example",
/// ResourceArn = Output.Tuple(current, currentGetCallerIdentity, example.Id).Apply(values =>
/// {
/// var current = values.Item1;
/// var currentGetCallerIdentity = values.Item2;
/// var id = values.Item3;
/// return $"arn:aws:ec2:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:eip-allocation/{id}";
/// }),
/// Tags =
/// {
/// { "Environment", "Dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewEip(ctx, "example", &ec2.EipArgs{
/// Domain: pulumi.String("vpc"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = shield.NewProtection(ctx, "example", &shield.ProtectionArgs{
/// Name: pulumi.String("example"),
/// ResourceArn: example.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("arn:aws:ec2:%v:%v:eip-allocation/%v", current.Region, currentGetCallerIdentity.AccountId, id), nil
/// }).(pulumi.StringOutput),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Dev"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.shield.Protection;
/// import com.pulumi.aws.shield.ProtectionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .build());
///
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new Eip("example", EipArgs.builder()
/// .domain("vpc")
/// .build());
///
/// var exampleProtection = new Protection("exampleProtection", ProtectionArgs.builder()
/// .name("example")
/// .resourceArn(example.id().applyValue(_id -> String.format("arn:aws:ec2:%s:%s:eip-allocation/%s", current.region(),currentGetCallerIdentity.accountId(),_id)))
/// .tags(Map.of("Environment", "Dev"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Eip
/// properties:
/// domain: vpc
/// exampleProtection:
/// type: aws:shield:Protection
/// name: example
/// properties:
/// name: example
/// resourceArn: arn:aws:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${example.id}
/// tags:
/// Environment: Dev
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments: {}
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// currentGetCallerIdentity:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection resources using specifying their ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protection:Protection example ff9592dc-22f3-4e88-afa1-7b29fde9669a
/// ```
class Protection extends CustomResource {
  /// The ARN of the Protection.
  late final Output<String> arn;

  /// A friendly name for the Protection you are creating.
  late final Output<String> name;

  /// The ARN (Amazon Resource Name) of the resource to be protected.
  late final Output<String> resourceArn;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Protection(
    String name, {
    ProtectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/protection:Protection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
