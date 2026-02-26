import 'package:pulumi/pulumi.dart';
import 'internet_gateway_args.dart';

/// Provides a resource to create a VPC Internet Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const gw = new aws.ec2.InternetGateway("gw", {
/// vpcId: main.id,
/// tags: {
/// Name: "main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gw = aws.ec2.InternetGateway("gw",
/// vpc_id=main["id"],
/// tags={
/// "Name": "main",
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
/// var gw = new Aws.Ec2.InternetGateway("gw", new()
/// {
/// VpcId = main.Id,
/// Tags =
/// {
/// { "Name", "main" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
/// VpcId: pulumi.Any(main.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("main"),
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
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayArgs;
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
/// var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
/// .vpcId(main.id())
/// .tags(Map.of("Name", "main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// gw:
/// type: aws:ec2:InternetGateway
/// properties:
/// vpcId: ${main.id}
/// tags:
/// Name: main
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Internet Gateways using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/internetGateway:InternetGateway gw igw-c0a643a9
/// ```
class InternetGateway extends CustomResource {
  /// The ARN of the Internet Gateway.
  late final Output<String> arn;

  /// The ID of the AWS account that owns the internet gateway.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** It's recommended to denote that the AWS Instance or Elastic IP depends on the Internet Gateway. For example:
  ///
  /// <!--Start PulumiCodeChooser -->
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const gw = new aws.ec2.InternetGateway("gw", {vpcId: main.id});
  /// const foo = new aws.ec2.Instance("foo", {}, {
  /// dependsOn: [gw],
  /// });
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// gw = aws.ec2.InternetGateway("gw", vpc_id=main["id"])
  /// foo = aws.ec2.Instance("foo", opts = pulumi.ResourceOptions(depends_on=[gw]))
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  /// var gw = new Aws.Ec2.InternetGateway("gw", new()
  /// {
  /// VpcId = main.Id,
  /// });
  ///
  /// var foo = new Aws.Ec2.Instance("foo", new()
  /// {
  /// }, new CustomResourceOptions
  /// {
  /// DependsOn =
  /// {
  /// gw,
  /// },
  /// });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
  /// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// pulumi.Run(func(ctx *pulumi.Context) error {
  /// gw, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
  /// VpcId: pulumi.Any(main.Id),
  /// })
  /// if err != nil {
  /// return err
  /// }
  /// _, err = ec2.NewInstance(ctx, "foo", nil, pulumi.DependsOn([]pulumi.Resource{
  /// gw,
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
  /// import com.pulumi.aws.ec2.InternetGateway;
  /// import com.pulumi.aws.ec2.InternetGatewayArgs;
  /// import com.pulumi.aws.ec2.Instance;
  /// import com.pulumi.aws.ec2.InstanceArgs;
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
  /// var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
  /// .vpcId(main.id())
  /// .build());
  ///
  /// var foo = new Instance("foo", InstanceArgs.Empty, CustomResourceOptions.builder()
  /// .dependsOn(gw)
  /// .build());
  ///
  /// }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  /// gw:
  /// type: aws:ec2:InternetGateway
  /// properties:
  /// vpcId: ${main.id}
  /// foo:
  /// type: aws:ec2:Instance
  /// options:
  /// dependsOn:
  /// - ${gw}
  /// ```
  /// <!--End PulumiCodeChooser -->
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.  See the<span pulumi-lang-nodejs=" aws.ec2.InternetGatewayAttachment " pulumi-lang-dotnet=" aws.ec2.InternetGatewayAttachment " pulumi-lang-go=" ec2.InternetGatewayAttachment " pulumi-lang-python=" ec2.InternetGatewayAttachment " pulumi-lang-yaml=" aws.ec2.InternetGatewayAttachment " pulumi-lang-java=" aws.ec2.InternetGatewayAttachment "> aws.ec2.InternetGatewayAttachment </span>resource for an alternate way to attach an Internet Gateway to a VPC.
  late final Output<String> vpcId;

  InternetGateway(
    String name, {
    InternetGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGateway:InternetGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
