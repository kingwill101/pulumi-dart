import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ingress_connection_args.dart';
import 'vpc_ingress_connection_ingress_vpc_configuration.dart';
import 'vpc_ingress_connection_state.dart';

/// Manages an App Runner VPC Ingress Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.VpcIngressConnection("example", {
///     name: "example",
///     serviceArn: exampleAwsApprunnerService.arn,
///     ingressVpcConfiguration: {
///         vpcId: _default.id,
///         vpcEndpointId: apprunner.id,
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.VpcIngressConnection("example",
///     name="example",
///     service_arn=example_aws_apprunner_service["arn"],
///     ingress_vpc_configuration={
///         "vpc_id": default["id"],
///         "vpc_endpoint_id": apprunner["id"],
///     },
///     tags={
///         "foo": "bar",
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
///     var example = new Aws.AppRunner.VpcIngressConnection("example", new()
///     {
///         Name = "example",
///         ServiceArn = exampleAwsApprunnerService.Arn,
///         IngressVpcConfiguration = new Aws.AppRunner.Inputs.VpcIngressConnectionIngressVpcConfigurationArgs
///         {
///             VpcId = @default.Id,
///             VpcEndpointId = apprunner.Id,
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewVpcIngressConnection(ctx, "example", &apprunner.VpcIngressConnectionArgs{
/// 			Name:       pulumi.String("example"),
/// 			ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
/// 			IngressVpcConfiguration: &apprunner.VpcIngressConnectionIngressVpcConfigurationArgs{
/// 				VpcId:         pulumi.Any(_default.Id),
/// 				VpcEndpointId: pulumi.Any(apprunner.Id),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.apprunner.VpcIngressConnection;
/// import com.pulumi.aws.apprunner.VpcIngressConnectionArgs;
/// import com.pulumi.aws.apprunner.inputs.VpcIngressConnectionIngressVpcConfigurationArgs;
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
///         var example = new VpcIngressConnection("example", VpcIngressConnectionArgs.builder()
///             .name("example")
///             .serviceArn(exampleAwsApprunnerService.arn())
///             .ingressVpcConfiguration(VpcIngressConnectionIngressVpcConfigurationArgs.builder()
///                 .vpcId(default_.id())
///                 .vpcEndpointId(apprunner.id())
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:VpcIngressConnection
///     properties:
///       name: example
///       serviceArn: ${exampleAwsApprunnerService.arn}
///       ingressVpcConfiguration:
///         vpcId: ${default.id}
///         vpcEndpointId: ${apprunner.id}
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner VPC ingress connection.
///
///
/// Using `pulumi import`, import App Runner VPC Ingress Connection using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/vpcIngressConnection:VpcIngressConnection example "arn:aws:apprunner:us-west-2:837424938642:vpcingressconnection/example/b379f86381d74825832c2e82080342fa"
/// ```
class VpcIngressConnection extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the VPC Ingress Connection.
  late final pulumi.Output<String> arn;
  /// The domain name associated with the VPC Ingress Connection resource.
  late final pulumi.Output<String> domainName;
  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  late final pulumi.Output<VpcIngressConnectionIngressVpcConfiguration> ingressVpcConfiguration;
  /// A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  late final pulumi.Output<String> serviceArn;
  /// The current status of the VPC Ingress Connection.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcIngressConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIngressConnection]. {@macro pulumi_apprunner_vpc_ingress_connection_vpc_ingress_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIngressConnection(
    String name, {
    VpcIngressConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/vpcIngressConnection:VpcIngressConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.ingressVpcConfiguration = registerOutput<VpcIngressConnectionIngressVpcConfiguration>('ingressVpcConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VpcIngressConnection] resource's state with the given [name] and [id].
  static VpcIngressConnection get(
    String name,
    pulumi.Input<String> id, {
    VpcIngressConnectionState? state,
  }) {
    return VpcIngressConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcIngressConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/vpcIngressConnection:VpcIngressConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.ingressVpcConfiguration = registerOutput<VpcIngressConnectionIngressVpcConfiguration>('ingressVpcConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
