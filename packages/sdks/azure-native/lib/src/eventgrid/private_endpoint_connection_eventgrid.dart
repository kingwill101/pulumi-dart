import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_response.dart';
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';

/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.EventGrid.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ParentName = "exampletopic1",
///         ParentType = "topics",
///         PrivateEndpointConnectionName = "BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B",
///         PrivateLinkServiceConnectionState = new AzureNative.EventGrid.Inputs.ConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Description = "approving connection",
///             Status = AzureNative.EventGrid.PersistedConnectionStatus.Approved,
///         },
///         ResourceGroupName = "examplerg",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &eventgrid.PrivateEndpointConnectionArgs{
/// 			ParentName:                    pulumi.String("exampletopic1"),
/// 			ParentType:                    pulumi.String("topics"),
/// 			PrivateEndpointConnectionName: pulumi.String("BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B"),
/// 			PrivateLinkServiceConnectionState: &eventgrid.ConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Description:     pulumi.String("approving connection"),
/// 				Status:          pulumi.String(eventgrid.PersistedConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_eventgrid_privateendpointconnection" "privateEndpointConnection" {
///   parent_name                      = "exampletopic1"
///   parent_type                      = "topics"
///   private_endpoint_connection_name = "BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B"
///   private_link_service_connection_state = {
///     actions_required = "None"
///     description      = "approving connection"
///     status           = "Approved"
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.eventgrid.PrivateEndpointConnection;
/// import com.pulumi.azurenative.eventgrid.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.ConnectionStateArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .parentName("exampletopic1")
///             .parentType("topics")
///             .privateEndpointConnectionName("BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B")
///             .privateLinkServiceConnectionState(ConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .description("approving connection")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const privateEndpointConnection = new azure_native.eventgrid.PrivateEndpointConnection("privateEndpointConnection", {
///     parentName: "exampletopic1",
///     parentType: "topics",
///     privateEndpointConnectionName: "BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         description: "approving connection",
///         status: azure_native.eventgrid.PersistedConnectionStatus.Approved,
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.eventgrid.PrivateEndpointConnection("privateEndpointConnection",
///     parent_name="exampletopic1",
///     parent_type="topics",
///     private_endpoint_connection_name="BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "description": "approving connection",
///         "status": azure_native.eventgrid.PersistedConnectionStatus.APPROVED,
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:eventgrid:PrivateEndpointConnection
///     properties:
///       parentName: exampletopic1
///       parentType: topics
///       privateEndpointConnectionName: BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         description: approving connection
///         status: Approved
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:eventgrid:PrivateEndpointConnection BMTPE5.8A30D251-4C61-489D-A1AA-B37C4A329B8B /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/{parentType}/{parentName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionEventgrid extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// GroupIds from the private link service resource.
  late final pulumi.Output<List<String>?> groupIds;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The Private Endpoint resource for this Connection.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// Details about the state of the connection.
  late final pulumi.Output<ConnectionStateResponse?> privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  late final pulumi.Output<String?> provisioningState;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionEventgrid].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionEventgrid]. {@macro pulumi_eventgrid_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionEventgrid(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>?>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<ConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String?>('provisioningState');
    type = registerOutput<String>('type');
  }
}
