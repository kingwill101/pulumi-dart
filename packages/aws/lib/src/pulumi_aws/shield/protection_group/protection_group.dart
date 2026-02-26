import 'package:pulumi/pulumi.dart';
import 'protection_group_args.dart';

/// Creates a grouping of protected resources so they can be handled as a collective.
/// This resource grouping improves the accuracy of detection and reduces false positives. For more information see
/// [Managing AWS Shield Advanced protection groups](https://docs.aws.amazon.com/waf/latest/developerguide/manage-protection-group.html)
///
/// ## Example Usage
///
/// ### Create protection group for all resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.shield.ProtectionGroup("example", {
/// protectionGroupId: "example",
/// aggregation: "MAX",
/// pattern: "ALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.shield.ProtectionGroup("example",
/// protection_group_id="example",
/// aggregation="MAX",
/// pattern="ALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Shield.ProtectionGroup("example", new()
/// {
/// ProtectionGroupId = "example",
/// Aggregation = "MAX",
/// Pattern = "ALL",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := shield.NewProtectionGroup(ctx, "example", &shield.ProtectionGroupArgs{
/// ProtectionGroupId: pulumi.String("example"),
/// Aggregation:       pulumi.String("MAX"),
/// Pattern:           pulumi.String("ALL"),
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
/// import com.pulumi.aws.shield.ProtectionGroup;
/// import com.pulumi.aws.shield.ProtectionGroupArgs;
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
/// var example = new ProtectionGroup("example", ProtectionGroupArgs.builder()
/// .protectionGroupId("example")
/// .aggregation("MAX")
/// .pattern("ALL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:shield:ProtectionGroup
/// properties:
/// protectionGroupId: example
/// aggregation: MAX
/// pattern: ALL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create protection group for arbitrary number of resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const example = new aws.ec2.Eip("example", {domain: "vpc"});
/// const exampleProtection = new aws.shield.Protection("example", {
/// name: "example",
/// resourceArn: pulumi.all([current, currentGetCallerIdentity, example.id]).apply(([current, currentGetCallerIdentity, id]) => `arn:aws:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${id}`),
/// });
/// const exampleProtectionGroup = new aws.shield.ProtectionGroup("example", {
/// protectionGroupId: "example",
/// aggregation: "MEAN",
/// pattern: "ARBITRARY",
/// members: [pulumi.all([current, currentGetCallerIdentity, example.id]).apply(([current, currentGetCallerIdentity, id]) => `arn:aws:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${id}`)],
/// }, {
/// dependsOn: [exampleProtection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// example = aws.ec2.Eip("example", domain="vpc")
/// example_protection = aws.shield.Protection("example",
/// name="example",
/// resource_arn=example.id.apply(lambda id: f"arn:aws:ec2:{current.region}:{current_get_caller_identity.account_id}:eip-allocation/{id}"))
/// example_protection_group = aws.shield.ProtectionGroup("example",
/// protection_group_id="example",
/// aggregation="MEAN",
/// pattern="ARBITRARY",
/// members=[example.id.apply(lambda id: f"arn:aws:ec2:{current.region}:{current_get_caller_identity.account_id}:eip-allocation/{id}")],
/// opts = pulumi.ResourceOptions(depends_on=[example_protection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
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
/// });
///
/// var exampleProtectionGroup = new Aws.Shield.ProtectionGroup("example", new()
/// {
/// ProtectionGroupId = "example",
/// Aggregation = "MEAN",
/// Pattern = "ARBITRARY",
/// Members = new[]
/// {
/// Output.Tuple(current, currentGetCallerIdentity, example.Id).Apply(values =>
/// {
/// var current = values.Item1;
/// var currentGetCallerIdentity = values.Item2;
/// var id = values.Item3;
/// return $"arn:aws:ec2:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:eip-allocation/{id}";
/// }),
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleProtection,
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
/// exampleProtection, err := shield.NewProtection(ctx, "example", &shield.ProtectionArgs{
/// Name: pulumi.String("example"),
/// ResourceArn: example.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("arn:aws:ec2:%v:%v:eip-allocation/%v", current.Region, currentGetCallerIdentity.AccountId, id), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = shield.NewProtectionGroup(ctx, "example", &shield.ProtectionGroupArgs{
/// ProtectionGroupId: pulumi.String("example"),
/// Aggregation:       pulumi.String("MEAN"),
/// Pattern:           pulumi.String("ARBITRARY"),
/// Members: pulumi.StringArray{
/// example.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("arn:aws:ec2:%v:%v:eip-allocation/%v", current.Region, currentGetCallerIdentity.AccountId, id), nil
/// }).(pulumi.StringOutput),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleProtection,
/// }))
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
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.shield.Protection;
/// import com.pulumi.aws.shield.ProtectionArgs;
/// import com.pulumi.aws.shield.ProtectionGroup;
/// import com.pulumi.aws.shield.ProtectionGroupArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// .build());
///
/// var exampleProtectionGroup = new ProtectionGroup("exampleProtectionGroup", ProtectionGroupArgs.builder()
/// .protectionGroupId("example")
/// .aggregation("MEAN")
/// .pattern("ARBITRARY")
/// .members(example.id().applyValue(_id -> String.format("arn:aws:ec2:%s:%s:eip-allocation/%s", current.region(),currentGetCallerIdentity.accountId(),_id)))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleProtection)
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
/// exampleProtectionGroup:
/// type: aws:shield:ProtectionGroup
/// name: example
/// properties:
/// protectionGroupId: example
/// aggregation: MEAN
/// pattern: ARBITRARY
/// members:
/// - arn:aws:ec2:${current.region}:${currentGetCallerIdentity.accountId}:eip-allocation/${example.id}
/// options:
/// dependsOn:
/// - ${exampleProtection}
/// variables:
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
/// ### Create protection group for a type of resource
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.shield.ProtectionGroup("example", {
/// protectionGroupId: "example",
/// aggregation: "SUM",
/// pattern: "BY_RESOURCE_TYPE",
/// resourceType: "ELASTIC_IP_ALLOCATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.shield.ProtectionGroup("example",
/// protection_group_id="example",
/// aggregation="SUM",
/// pattern="BY_RESOURCE_TYPE",
/// resource_type="ELASTIC_IP_ALLOCATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Shield.ProtectionGroup("example", new()
/// {
/// ProtectionGroupId = "example",
/// Aggregation = "SUM",
/// Pattern = "BY_RESOURCE_TYPE",
/// ResourceType = "ELASTIC_IP_ALLOCATION",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := shield.NewProtectionGroup(ctx, "example", &shield.ProtectionGroupArgs{
/// ProtectionGroupId: pulumi.String("example"),
/// Aggregation:       pulumi.String("SUM"),
/// Pattern:           pulumi.String("BY_RESOURCE_TYPE"),
/// ResourceType:      pulumi.String("ELASTIC_IP_ALLOCATION"),
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
/// import com.pulumi.aws.shield.ProtectionGroup;
/// import com.pulumi.aws.shield.ProtectionGroupArgs;
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
/// var example = new ProtectionGroup("example", ProtectionGroupArgs.builder()
/// .protectionGroupId("example")
/// .aggregation("SUM")
/// .pattern("BY_RESOURCE_TYPE")
/// .resourceType("ELASTIC_IP_ALLOCATION")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:shield:ProtectionGroup
/// properties:
/// protectionGroupId: example
/// aggregation: SUM
/// pattern: BY_RESOURCE_TYPE
/// resourceType: ELASTIC_IP_ALLOCATION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection group resources using their protection group id. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protectionGroup:ProtectionGroup example example
/// ```
class ProtectionGroup extends CustomResource {
  /// Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  late final Output<String> aggregation;

  /// The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <span pulumi-lang-nodejs="`pattern`" pulumi-lang-dotnet="`Pattern`" pulumi-lang-go="`pattern`" pulumi-lang-python="`pattern`" pulumi-lang-yaml="`pattern`" pulumi-lang-java="`pattern`">`pattern`</span> to ARBITRARY and you must not set it for any other <span pulumi-lang-nodejs="`pattern`" pulumi-lang-dotnet="`Pattern`" pulumi-lang-go="`pattern`" pulumi-lang-python="`pattern`" pulumi-lang-yaml="`pattern`" pulumi-lang-java="`pattern`">`pattern`</span> setting.
  late final Output<List<String>?> members;

  /// The criteria to use to choose the protected resources for inclusion in the group.
  late final Output<String> pattern;

  /// The ARN (Amazon Resource Name) of the protection group.
  late final Output<String> protectionGroupArn;

  /// The name of the protection group.
  late final Output<String> protectionGroupId;

  /// The resource type to include in the protection group. You must set this when you set <span pulumi-lang-nodejs="`pattern`" pulumi-lang-dotnet="`Pattern`" pulumi-lang-go="`pattern`" pulumi-lang-python="`pattern`" pulumi-lang-yaml="`pattern`" pulumi-lang-java="`pattern`">`pattern`</span> to BY_RESOURCE_TYPE and you must not set it for any other <span pulumi-lang-nodejs="`pattern`" pulumi-lang-dotnet="`Pattern`" pulumi-lang-go="`pattern`" pulumi-lang-python="`pattern`" pulumi-lang-yaml="`pattern`" pulumi-lang-java="`pattern`">`pattern`</span> setting.
  late final Output<String?> resourceType;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ProtectionGroup(
    String name, {
    ProtectionGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/protectionGroup:ProtectionGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregation = registerOutput<String>('aggregation');
    this.members = registerOutput<List<String>?>('members');
    this.pattern = registerOutput<String>('pattern');
    this.protectionGroupArn = registerOutput<String>('protectionGroupArn');
    this.protectionGroupId = registerOutput<String>('protectionGroupId');
    this.resourceType = registerOutput<String?>('resourceType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
