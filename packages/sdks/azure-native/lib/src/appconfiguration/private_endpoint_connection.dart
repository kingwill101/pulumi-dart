import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-08-01-preview, 2023-09-01-preview, 2024-06-01, 2024-06-15-preview, 2025-02-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.AppConfiguration.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ConfigStoreName = "contoso",
///         PrivateEndpointConnectionName = "myConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.AppConfiguration.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.AppConfiguration.ConnectionStatus.Approved,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &appconfiguration.PrivateEndpointConnectionArgs{
/// 			ConfigStoreName:               pulumi.String("contoso"),
/// 			PrivateEndpointConnectionName: pulumi.String("myConnection"),
/// 			PrivateLinkServiceConnectionState: &appconfiguration.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(appconfiguration.ConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.appconfiguration.PrivateEndpointConnection;
/// import com.pulumi.azurenative.appconfiguration.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.appconfiguration.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .configStoreName("contoso")
///             .privateEndpointConnectionName("myConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const privateEndpointConnection = new azure_native.appconfiguration.PrivateEndpointConnection("privateEndpointConnection", {
///     configStoreName: "contoso",
///     privateEndpointConnectionName: "myConnection",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.appconfiguration.ConnectionStatus.Approved,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.appconfiguration.PrivateEndpointConnection("privateEndpointConnection",
///     config_store_name="contoso",
///     private_endpoint_connection_name="myConnection",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.appconfiguration.ConnectionStatus.APPROVED,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:appconfiguration:PrivateEndpointConnection
///     properties:
///       configStoreName: contoso
///       privateEndpointConnectionName: myConnection
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:appconfiguration:PrivateEndpointConnection myConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppConfiguration/configurationStores/{configStoreName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The resource of private endpoint.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning status of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_appconfiguration_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appconfiguration:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
