import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_response.dart';
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'system_data_response.dart';

/// Properties of the PrivateEndpointConnection.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpacePrivateEndPointConnectionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.EventHub.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         NamespaceName = "sdk-Namespace-2924",
///         PrivateEndpoint = new AzureNative.EventHub.Inputs.PrivateEndpointArgs
///         {
///             Id = "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///         },
///         PrivateEndpointConnectionName = "privateEndpointConnectionName",
///         PrivateLinkServiceConnectionState = new AzureNative.EventHub.Inputs.ConnectionStateArgs
///         {
///             Description = "testing",
///             Status = AzureNative.EventHub.PrivateLinkConnectionStatus.Rejected,
///         },
///         ProvisioningState = AzureNative.EventHub.EndPointProvisioningState.Succeeded,
///         ResourceGroupName = "ArunMonocle",
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &eventhub.PrivateEndpointConnectionArgs{
/// 			NamespaceName: pulumi.String("sdk-Namespace-2924"),
/// 			PrivateEndpoint: &eventhub.PrivateEndpointArgs{
/// 				Id: pulumi.String("/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847"),
/// 			},
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnectionName"),
/// 			PrivateLinkServiceConnectionState: &eventhub.ConnectionStateArgs{
/// 				Description: pulumi.String("testing"),
/// 				Status:      pulumi.String(eventhub.PrivateLinkConnectionStatusRejected),
/// 			},
/// 			ProvisioningState: pulumi.String(eventhub.EndPointProvisioningStateSucceeded),
/// 			ResourceGroupName: pulumi.String("ArunMonocle"),
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
/// import com.pulumi.azurenative.eventhub.PrivateEndpointConnection;
/// import com.pulumi.azurenative.eventhub.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.eventhub.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.eventhub.inputs.ConnectionStateArgs;
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
///             .namespaceName("sdk-Namespace-2924")
///             .privateEndpoint(PrivateEndpointArgs.builder()
///                 .id("/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847")
///                 .build())
///             .privateEndpointConnectionName("privateEndpointConnectionName")
///             .privateLinkServiceConnectionState(ConnectionStateArgs.builder()
///                 .description("testing")
///                 .status("Rejected")
///                 .build())
///             .provisioningState("Succeeded")
///             .resourceGroupName("ArunMonocle")
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
/// const privateEndpointConnection = new azure_native.eventhub.PrivateEndpointConnection("privateEndpointConnection", {
///     namespaceName: "sdk-Namespace-2924",
///     privateEndpoint: {
///         id: "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///     },
///     privateEndpointConnectionName: "privateEndpointConnectionName",
///     privateLinkServiceConnectionState: {
///         description: "testing",
///         status: azure_native.eventhub.PrivateLinkConnectionStatus.Rejected,
///     },
///     provisioningState: azure_native.eventhub.EndPointProvisioningState.Succeeded,
///     resourceGroupName: "ArunMonocle",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.eventhub.PrivateEndpointConnection("privateEndpointConnection",
///     namespace_name="sdk-Namespace-2924",
///     private_endpoint={
///         "id": "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///     },
///     private_endpoint_connection_name="privateEndpointConnectionName",
///     private_link_service_connection_state={
///         "description": "testing",
///         "status": azure_native.eventhub.PrivateLinkConnectionStatus.REJECTED,
///     },
///     provisioning_state=azure_native.eventhub.EndPointProvisioningState.SUCCEEDED,
///     resource_group_name="ArunMonocle")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:eventhub:PrivateEndpointConnection
///     properties:
///       namespaceName: sdk-Namespace-2924
///       privateEndpoint:
///         id: /subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-EventHub-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847
///       privateEndpointConnectionName: privateEndpointConnectionName
///       privateLinkServiceConnectionState:
///         description: testing
///         status: Rejected
///       provisioningState: Succeeded
///       resourceGroupName: ArunMonocle
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
/// $ pulumi import azure-native:eventhub:PrivateEndpointConnection 928c44d5-b7c6-423b-b6fa-811e0c27b3e0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionEventhub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Private Endpoint resource for this Connection.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// Details about the state of the connection.
  late final pulumi.Output<ConnectionStateResponse?>
  privateLinkServiceConnectionState;

  /// Provisioning state of the Private Endpoint Connection.
  late final pulumi.Output<String?> provisioningState;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionEventhub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionEventhub]. {@macro pulumi_eventhub_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionEventhub(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventhub:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
    );
    privateLinkServiceConnectionState =
        registerOutput<ConnectionStateResponse?>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
