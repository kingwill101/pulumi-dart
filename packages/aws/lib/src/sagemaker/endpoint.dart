import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_deployment_config.dart';

/// Provides a SageMaker AI Endpoint resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const e = new aws.sagemaker.Endpoint("e", {
///     name: "my-endpoint",
///     endpointConfigName: ec.name,
///     tags: {
///         Name: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// e = aws.sagemaker.Endpoint("e",
///     name="my-endpoint",
///     endpoint_config_name=ec["name"],
///     tags={
///         "Name": "foo",
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
///     var e = new Aws.Sagemaker.Endpoint("e", new()
///     {
///         Name = "my-endpoint",
///         EndpointConfigName = ec.Name,
///         Tags =
///         {
///             { "Name", "foo" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewEndpoint(ctx, "e", &sagemaker.EndpointArgs{
/// 			Name:               pulumi.String("my-endpoint"),
/// 			EndpointConfigName: pulumi.Any(ec.Name),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
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
/// import com.pulumi.aws.sagemaker.Endpoint;
/// import com.pulumi.aws.sagemaker.EndpointArgs;
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
///         var e = new Endpoint("e", EndpointArgs.builder()
///             .name("my-endpoint")
///             .endpointConfigName(ec.name())
///             .tags(Map.of("Name", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   e:
///     type: aws:sagemaker:Endpoint
///     properties:
///       name: my-endpoint
///       endpointConfigName: ${ec.name}
///       tags:
///         Name: foo
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpoint:Endpoint test_endpoint my-endpoint
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this endpoint.
  late final pulumi.Output<String> arn;

  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  late final pulumi.Output<EndpointDeploymentConfig?> deploymentConfig;

  /// The name of the endpoint configuration to use.
  late final pulumi.Output<String> endpointConfigName;

  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_sagemaker_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.deploymentConfig = registerOutput<EndpointDeploymentConfig?>(
      'deploymentConfig',
    );
    this.endpointConfigName = registerOutput<String>('endpointConfigName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
