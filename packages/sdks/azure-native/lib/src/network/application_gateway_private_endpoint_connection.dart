import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private Endpoint connection on an application gateway.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update Application Gateway Private Endpoint Connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationGatewayPrivateEndpointConnection = new AzureNative.Network.ApplicationGatewayPrivateEndpointConnection("applicationGatewayPrivateEndpointConnection", new()
///     {
///         ApplicationGatewayName = "appgw",
///         ConnectionName = "connection1",
///         Name = "connection1",
///         PrivateLinkServiceConnectionState = new AzureNative.Network.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "approved it for some reason.",
///             Status = "Approved",
///         },
///         ResourceGroupName = "rg1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewApplicationGatewayPrivateEndpointConnection(ctx, "applicationGatewayPrivateEndpointConnection", &network.ApplicationGatewayPrivateEndpointConnectionArgs{
/// 			ApplicationGatewayName: pulumi.String("appgw"),
/// 			ConnectionName:         pulumi.String("connection1"),
/// 			Name:                   pulumi.String("connection1"),
/// 			PrivateLinkServiceConnectionState: &network.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("approved it for some reason."),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.ApplicationGatewayPrivateEndpointConnection;
/// import com.pulumi.azurenative.network.ApplicationGatewayPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var applicationGatewayPrivateEndpointConnection = new ApplicationGatewayPrivateEndpointConnection("applicationGatewayPrivateEndpointConnection", ApplicationGatewayPrivateEndpointConnectionArgs.builder()
///             .applicationGatewayName("appgw")
///             .connectionName("connection1")
///             .name("connection1")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("approved it for some reason.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const applicationGatewayPrivateEndpointConnection = new azure_native.network.ApplicationGatewayPrivateEndpointConnection("applicationGatewayPrivateEndpointConnection", {
///     applicationGatewayName: "appgw",
///     connectionName: "connection1",
///     name: "connection1",
///     privateLinkServiceConnectionState: {
///         description: "approved it for some reason.",
///         status: "Approved",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_gateway_private_endpoint_connection = azure_native.network.ApplicationGatewayPrivateEndpointConnection("applicationGatewayPrivateEndpointConnection",
///     application_gateway_name="appgw",
///     connection_name="connection1",
///     name="connection1",
///     private_link_service_connection_state={
///         "description": "approved it for some reason.",
///         "status": "Approved",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationGatewayPrivateEndpointConnection:
///     type: azure-native:network:ApplicationGatewayPrivateEndpointConnection
///     properties:
///       applicationGatewayName: appgw
///       connectionName: connection1
///       name: connection1
///       privateLinkServiceConnectionState:
///         description: approved it for some reason.
///         status: Approved
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:ApplicationGatewayPrivateEndpointConnection testPlePeConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationGateways/{applicationGatewayName}/privateEndpointConnections/{connectionName}
/// ```
class ApplicationGatewayPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The consumer link id.
  late final pulumi.Output<String> linkIdentifier;
  /// Name of the private endpoint connection on an application gateway.
  late final pulumi.Output<String?> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// The provisioning state of the application gateway private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationGatewayPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGatewayPrivateEndpointConnection]. {@macro pulumi_network_application_gateway_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGatewayPrivateEndpointConnection(
    String name, {
    ApplicationGatewayPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ApplicationGatewayPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    linkIdentifier = registerOutput<String>('linkIdentifier');
    this.name = registerOutput<String?>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
