import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_gateway_args.dart';

/// Provides a resource to create a VPC Internet Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const gw = new aws.ec2.InternetGateway("gw", {
///     vpcId: main.id,
///     tags: {
///         Name: "main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// gw = aws.ec2.InternetGateway("gw",
///     vpc_id=main["id"],
///     tags={
///         "Name": "main",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gw = new Aws.Ec2.InternetGateway("gw", new()
///     {
///         VpcId = main.Id,
///         Tags =
///         {
///             { "Name", "main" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
/// 			VpcId: pulumi.Any(main.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("main"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
///             .vpcId(main.id())
///             .tags(Map.of("Name", "main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gw:
///     type: aws:ec2:InternetGateway
///     properties:
///       vpcId: ${main.id}
///       tags:
///         Name: main
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Internet Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/internetGateway:InternetGateway gw igw-c0a643a9
/// ```
class InternetGateway extends pulumi.CustomResource {
  /// The ARN of the Internet Gateway.
  late final pulumi.Output<String> arn;
  /// The ID of the AWS account that owns the internet gateway.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** It's recommended to denote that the AWS Instance or Elastic IP depends on the Internet Gateway. For example:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const gw = new aws.ec2.InternetGateway("gw", {vpcId: main.id});
  /// const foo = new aws.ec2.Instance("foo", {}, {
  ///     dependsOn: [gw],
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
  ///     var gw = new Aws.Ec2.InternetGateway("gw", new()
  ///     {
  ///         VpcId = main.Id,
  ///     });
  ///
  ///     var foo = new Aws.Ec2.Instance("foo", new()
  ///     {
  ///     }, new CustomResourceOptions
  ///     {
  ///         DependsOn =
  ///         {
  ///             gw,
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		gw, err := ec2.NewInternetGateway(ctx, "gw", &ec2.InternetGatewayArgs{
  /// 			VpcId: pulumi.Any(main.Id),
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		_, err = ec2.NewInstance(ctx, "foo", nil, pulumi.DependsOn([]pulumi.Resource{
  /// 			gw,
  /// 		}))
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		return nil
  /// 	})
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
  ///     public static void main(String[] args) {
  ///         Pulumi.run(App::stack);
  ///     }
  ///
  ///     public static void stack(Context ctx) {
  ///         var gw = new InternetGateway("gw", InternetGatewayArgs.builder()
  ///             .vpcId(main.id())
  ///             .build());
  ///
  ///         var foo = new Instance("foo", InstanceArgs.Empty, CustomResourceOptions.builder()
  ///             .dependsOn(gw)
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   gw:
  ///     type: aws:ec2:InternetGateway
  ///     properties:
  ///       vpcId: ${main.id}
  ///   foo:
  ///     type: aws:ec2:Instance
  ///     options:
  ///       dependsOn:
  ///         - ${gw}
  /// ```
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VPC ID to create in.  See the aws.ec2.InternetGatewayAttachment resource for an alternate way to attach an Internet Gateway to a VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [InternetGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternetGateway]. {@macro pulumi_ec2_internet_gateway_internet_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternetGateway(
    String name, {
    InternetGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGateway:InternetGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
