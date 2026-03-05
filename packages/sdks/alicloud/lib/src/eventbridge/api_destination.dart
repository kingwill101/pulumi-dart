import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_destination_args.dart';
import 'api_destination_http_api_parameters.dart';
import 'api_destination_state.dart';

/// Provides a Event Bridge Api Destination resource.
///
/// For information about Event Bridge Api Destination and how to use it, see [What is Api Destination](https://www.alibabacloud.com/help/en/eventbridge/latest/api-eventbridge-2020-04-01-createapidestination).
///
/// &gt; **NOTE:** Available since v1.211.0.
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
/// const region = config.get("region") || "cn-chengdu";
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.eventbridge.Connection("default", {
///     connectionName: name,
///     networkParameters: {
///         networkType: "PublicNetwork",
///     },
/// });
/// const defaultApiDestination = new alicloud.eventbridge.ApiDestination("default", {
///     connectionName: _default.connectionName,
///     apiDestinationName: name,
///     description: "test-api-destination-connection",
///     httpApiParameters: {
///         endpoint: "http://127.0.0.1:8001",
///         method: "POST",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-chengdu"
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eventbridge.Connection("default",
///     connection_name=name,
///     network_parameters={
///         "network_type": "PublicNetwork",
///     })
/// default_api_destination = alicloud.eventbridge.ApiDestination("default",
///     connection_name=default.connection_name,
///     api_destination_name=name,
///     description="test-api-destination-connection",
///     http_api_parameters={
///         "endpoint": "http://127.0.0.1:8001",
///         "method": "POST",
///     })
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
///     var region = config.Get("region") ?? "cn-chengdu";
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.EventBridge.Connection("default", new()
///     {
///         ConnectionName = name,
///         NetworkParameters = new AliCloud.EventBridge.Inputs.ConnectionNetworkParametersArgs
///         {
///             NetworkType = "PublicNetwork",
///         },
///     });
///
///     var defaultApiDestination = new AliCloud.EventBridge.ApiDestination("default", new()
///     {
///         ConnectionName = @default.ConnectionName,
///         ApiDestinationName = name,
///         Description = "test-api-destination-connection",
///         HttpApiParameters = new AliCloud.EventBridge.Inputs.ApiDestinationHttpApiParametersArgs
///         {
///             Endpoint = "http://127.0.0.1:8001",
///             Method = "POST",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-chengdu"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := eventbridge.NewConnection(ctx, "default", &eventbridge.ConnectionArgs{
/// 			ConnectionName: pulumi.String(name),
/// 			NetworkParameters: &eventbridge.ConnectionNetworkParametersArgs{
/// 				NetworkType: pulumi.String("PublicNetwork"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventbridge.NewApiDestination(ctx, "default", &eventbridge.ApiDestinationArgs{
/// 			ConnectionName:     _default.ConnectionName,
/// 			ApiDestinationName: pulumi.String(name),
/// 			Description:        pulumi.String("test-api-destination-connection"),
/// 			HttpApiParameters: &eventbridge.ApiDestinationHttpApiParametersArgs{
/// 				Endpoint: pulumi.String("http://127.0.0.1:8001"),
/// 				Method:   pulumi.String("POST"),
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
/// import com.pulumi.alicloud.eventbridge.Connection;
/// import com.pulumi.alicloud.eventbridge.ConnectionArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionNetworkParametersArgs;
/// import com.pulumi.alicloud.eventbridge.ApiDestination;
/// import com.pulumi.alicloud.eventbridge.ApiDestinationArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ApiDestinationHttpApiParametersArgs;
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
///         final var region = config.get("region").orElse("cn-chengdu");
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Connection("default", ConnectionArgs.builder()
///             .connectionName(name)
///             .networkParameters(ConnectionNetworkParametersArgs.builder()
///                 .networkType("PublicNetwork")
///                 .build())
///             .build());
///
///         var defaultApiDestination = new ApiDestination("defaultApiDestination", ApiDestinationArgs.builder()
///             .connectionName(default_.connectionName())
///             .apiDestinationName(name)
///             .description("test-api-destination-connection")
///             .httpApiParameters(ApiDestinationHttpApiParametersArgs.builder()
///                 .endpoint("http://127.0.0.1:8001")
///                 .method("POST")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-chengdu
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:eventbridge:Connection
///     properties:
///       connectionName: ${name}
///       networkParameters:
///         networkType: PublicNetwork
///   defaultApiDestination:
///     type: alicloud:eventbridge:ApiDestination
///     name: default
///     properties:
///       connectionName: ${default.connectionName}
///       apiDestinationName: ${name}
///       description: test-api-destination-connection
///       httpApiParameters:
///         endpoint: http://127.0.0.1:8001
///         method: POST
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Api Destination can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/apiDestination:ApiDestination example <id>
/// ```
class ApiDestination extends pulumi.CustomResource {
  /// The name of the API destination.
  late final pulumi.Output<String> apiDestinationName;

  /// The name of the connection.
  late final pulumi.Output<String> connectionName;

  /// The creation time of the Api Destination.
  late final pulumi.Output<int> createTime;

  /// The description of the API destination.
  late final pulumi.Output<String?> description;

  /// The parameters that are configured for the API destination. See `http_api_parameters` below.
  late final pulumi.Output<ApiDestinationHttpApiParameters> httpApiParameters;

  /// Creates a new [ApiDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiDestination]. {@macro pulumi_eventbridge_api_destination_api_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiDestination(
    String name, {
    ApiDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/apiDestination:ApiDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiDestinationName = registerOutput<String>('apiDestinationName');
    connectionName = registerOutput<String>('connectionName');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    httpApiParameters = registerOutput<ApiDestinationHttpApiParameters>(
      'httpApiParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiDestinationHttpApiParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [ApiDestination] resource's state with the given [name] and [id].
  static ApiDestination get(
    String name,
    pulumi.Input<String> id, {
    ApiDestinationState? state,
  }) {
    return ApiDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/apiDestination:ApiDestination',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiDestinationName = registerOutput<String>('apiDestinationName');
    connectionName = registerOutput<String>('connectionName');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    httpApiParameters = registerOutput<ApiDestinationHttpApiParameters>(
      'httpApiParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiDestinationHttpApiParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
