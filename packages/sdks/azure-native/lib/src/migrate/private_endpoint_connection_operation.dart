import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_operation_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Private endpoint connection resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnectionOperations_Update_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionOperation = new AzureNative.Migrate.PrivateEndpointConnectionOperation("privateEndpointConnectionOperation", new()
///     {
///         PrivateEndpointConnectionName = "sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7",
///         PrivateLinkServiceConnectionState = new AzureNative.Migrate.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "",
///             Status = AzureNative.Migrate.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ProjectName = "sakanwar1204project",
///         ResourceGroupName = "sakanwar",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewPrivateEndpointConnectionOperation(ctx, "privateEndpointConnectionOperation", &migrate.PrivateEndpointConnectionOperationArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7"),
/// 			PrivateLinkServiceConnectionState: &migrate.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String(""),
/// 				Status:          pulumi.String(migrate.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ProjectName:       pulumi.String("sakanwar1204project"),
/// 			ResourceGroupName: pulumi.String("sakanwar"),
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
/// resource "azure-native_migrate_privateendpointconnectionoperation" "privateEndpointConnectionOperation" {
///   private_endpoint_connection_name = "sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7"
///   private_link_service_connection_state = {
///     actions_required = ""
///     status           = "Approved"
///   }
///   project_name        = "sakanwar1204project"
///   resource_group_name = "sakanwar"
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
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnectionOperation;
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnectionOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionOperation = new PrivateEndpointConnectionOperation("privateEndpointConnectionOperation", PrivateEndpointConnectionOperationArgs.builder()
///             .privateEndpointConnectionName("sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("")
///                 .status("Approved")
///                 .build())
///             .projectName("sakanwar1204project")
///             .resourceGroupName("sakanwar")
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
/// const privateEndpointConnectionOperation = new azure_native.migrate.PrivateEndpointConnectionOperation("privateEndpointConnectionOperation", {
///     privateEndpointConnectionName: "sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "",
///         status: azure_native.migrate.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     projectName: "sakanwar1204project",
///     resourceGroupName: "sakanwar",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_operation = azure_native.migrate.PrivateEndpointConnectionOperation("privateEndpointConnectionOperation",
///     private_endpoint_connection_name="sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7",
///     private_link_service_connection_state={
///         "actions_required": "",
///         "status": azure_native.migrate.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     project_name="sakanwar1204project",
///     resource_group_name="sakanwar")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionOperation:
///     type: azure-native:migrate:PrivateEndpointConnectionOperation
///     properties:
///       privateEndpointConnectionName: sakanwar1204project1634pe.bf42f8a1-09f5-4ee4-aea6-a019cc60f9d7
///       privateLinkServiceConnectionState:
///         actionsRequired: ""
///         status: Approved
///       projectName: sakanwar1204project
///       resourceGroupName: sakanwar
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
/// $ pulumi import azure-native:migrate:PrivateEndpointConnectionOperation sakanwar1204project1634pe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionOperation]. {@macro pulumi_migrate_private_endpoint_connection_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionOperation(
    String name, {
    PrivateEndpointConnectionOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:PrivateEndpointConnectionOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnectionOperation] resource.
  PrivateEndpointConnectionOperation.reference(String urn)
    : super(
        'azure-native:migrate:PrivateEndpointConnectionOperation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
