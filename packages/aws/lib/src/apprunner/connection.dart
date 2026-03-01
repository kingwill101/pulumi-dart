import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';

/// Manages an App Runner Connection.
///
/// > **NOTE:** After creation, you must complete the authentication handshake using the App Runner console.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.Connection("example", {
///     connectionName: "example",
///     providerType: "GITHUB",
///     tags: {
///         Name: "example-apprunner-connection",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.Connection("example",
///     connection_name="example",
///     provider_type="GITHUB",
///     tags={
///         "Name": "example-apprunner-connection",
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
///     var example = new Aws.AppRunner.Connection("example", new()
///     {
///         ConnectionName = "example",
///         ProviderType = "GITHUB",
///         Tags =
///         {
///             { "Name", "example-apprunner-connection" },
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
/// 		_, err := apprunner.NewConnection(ctx, "example", &apprunner.ConnectionArgs{
/// 			ConnectionName: pulumi.String("example"),
/// 			ProviderType:   pulumi.String("GITHUB"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-connection"),
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
/// import com.pulumi.aws.apprunner.Connection;
/// import com.pulumi.aws.apprunner.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .connectionName("example")
///             .providerType("GITHUB")
///             .tags(Map.of("Name", "example-apprunner-connection"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:Connection
///     properties:
///       connectionName: example
///       providerType: GITHUB
///       tags:
///         Name: example-apprunner-connection
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Connections using the `connection_name`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/connection:Connection example example
/// ```
class Connection extends pulumi.CustomResource {
  /// ARN of the connection.
  late final pulumi.Output<String> arn;

  /// Name of the connection.
  late final pulumi.Output<String> connectionName;

  /// Source repository provider. Valid values: `GITHUB`.
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Current state of the App Runner connection. When the state is `AVAILABLE`, you can use the connection to create an `aws.apprunner.Service` resource.
  late final pulumi.Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_apprunner_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.connectionName = registerOutput<String>('connectionName');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
