import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_args.dart';

/// Provides a Api Gateway Backend resource.
///
/// For information about Api Gateway Backend and how to use it, see [What is Backend](https://www.alibabacloud.com/help/en/api-gateway/developer-reference/api-cloudapi-2016-07-14-createbackend).
///
/// > **NOTE:** Available since v1.181.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.apigateway.Backend("default", {
///     backendName: name,
///     description: name,
///     backendType: "HTTP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.apigateway.Backend("default",
///     backend_name=name,
///     description=name,
///     backend_type="HTTP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.ApiGateway.Backend("default", new()
///     {
///         BackendName = name,
///         Description = name,
///         BackendType = "HTTP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := apigateway.NewBackend(ctx, "default", &apigateway.BackendArgs{
/// 			BackendName: pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			BackendType: pulumi.String("HTTP"),
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
/// import com.pulumi.alicloud.apigateway.Backend;
/// import com.pulumi.alicloud.apigateway.BackendArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Backend("default", BackendArgs.builder()
///             .backendName(name)
///             .description(name)
///             .backendType("HTTP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:apigateway:Backend
///     properties:
///       backendName: ${name}
///       description: ${name}
///       backendType: HTTP
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Backend can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/backend:Backend example <id>
/// ```
class Backend extends pulumi.CustomResource {
  /// The name of the Backend.
  late final pulumi.Output<String> backendName;
  /// The type of the Backend. Valid values: `HTTP`, `VPC`, `FC_EVENT`, `FC_EVENT_V3`, `FC_HTTP`, `FC_HTTP_V3`, `OSS`, `MOCK`.
  late final pulumi.Output<String> backendType;
  /// Whether to create an Event bus service association role.
  late final pulumi.Output<bool> createEventBridgeServiceLinkedRole;
  /// The description of the Backend.
  late final pulumi.Output<String?> description;

  /// Creates a new [Backend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backend]. {@macro pulumi_apigateway_backend_backend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backend(
    String name, {
    BackendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/backend:Backend',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendName = registerOutput<String>('backendName');
    this.backendType = registerOutput<String>('backendType');
    this.createEventBridgeServiceLinkedRole = registerOutput<bool>('createEventBridgeServiceLinkedRole');
    this.description = registerOutput<String?>('description');
  }
}
