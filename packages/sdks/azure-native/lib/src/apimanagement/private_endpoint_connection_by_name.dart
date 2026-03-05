import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_by_name_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementApproveOrRejectPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionByName = new AzureNative.ApiManagement.PrivateEndpointConnectionByName("privateEndpointConnectionByName", new()
///     {
///         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName",
///         PrivateEndpointConnectionName = "privateEndpointConnectionName",
///         Properties = new AzureNative.ApiManagement.Inputs.PrivateEndpointConnectionRequestPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.ApiManagement.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "The Private Endpoint Connection is approved.",
///                 Status = AzureNative.ApiManagement.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewPrivateEndpointConnectionByName(ctx, "privateEndpointConnectionByName", &apimanagement.PrivateEndpointConnectionByNameArgs{
/// 			Id:                            pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName"),
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnectionName"),
/// 			Properties: &apimanagement.PrivateEndpointConnectionRequestPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &apimanagement.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("The Private Endpoint Connection is approved."),
/// 					Status:      pulumi.String(apimanagement.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.PrivateEndpointConnectionByName;
/// import com.pulumi.azurenative.apimanagement.PrivateEndpointConnectionByNameArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.PrivateEndpointConnectionRequestPropertiesArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionByName = new PrivateEndpointConnectionByName("privateEndpointConnectionByName", PrivateEndpointConnectionByNameArgs.builder()
///             .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName")
///             .privateEndpointConnectionName("privateEndpointConnectionName")
///             .properties(PrivateEndpointConnectionRequestPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("The Private Endpoint Connection is approved.")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
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
/// const privateEndpointConnectionByName = new azure_native.apimanagement.PrivateEndpointConnectionByName("privateEndpointConnectionByName", {
///     id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName",
///     privateEndpointConnectionName: "privateEndpointConnectionName",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "The Private Endpoint Connection is approved.",
///             status: azure_native.apimanagement.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_by_name = azure_native.apimanagement.PrivateEndpointConnectionByName("privateEndpointConnectionByName",
///     id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName",
///     private_endpoint_connection_name="privateEndpointConnectionName",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "The Private Endpoint Connection is approved.",
///             "status": azure_native.apimanagement.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionByName:
///     type: azure-native:apimanagement:PrivateEndpointConnectionByName
///     properties:
///       id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/privateEndpointConnections/connectionName
///       privateEndpointConnectionName: privateEndpointConnectionName
///       properties:
///         privateLinkServiceConnectionState:
///           description: The Private Endpoint Connection is approved.
///           status: Approved
///       resourceGroupName: rg1
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:PrivateEndpointConnectionByName privateEndpointConnectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionByName extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionByName]. {@macro pulumi_apimanagement_private_endpoint_connection_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionByName(
    String name, {
    PrivateEndpointConnectionByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:PrivateEndpointConnectionByName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
