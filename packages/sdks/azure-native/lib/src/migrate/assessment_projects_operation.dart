import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_projects_operation_args.dart';
import 'system_data_response.dart';

/// An Assessment project site resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AssessmentProjectsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessmentProjectsOperation = new AzureNative.Migrate.AssessmentProjectsOperation("assessmentProjectsOperation", new()
///     {
///         AssessmentSolutionId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///         CustomerStorageAccountArmId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///         Location = "southeastasia",
///         ProjectName = "sakanwar1204project",
///         ProjectStatus = AzureNative.Migrate.ProjectStatus.Active,
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         PublicNetworkAccess = "Disabled",
///         ResourceGroupName = "sakanwar",
///         Tags =
///         {
///             { "Migrate Project", "sakanwar-PE-SEA" },
///         },
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
/// 		_, err := migrate.NewAssessmentProjectsOperation(ctx, "assessmentProjectsOperation", &migrate.AssessmentProjectsOperationArgs{
/// 			AssessmentSolutionId:        pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa"),
/// 			CustomerStorageAccountArmId: pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa"),
/// 			Location:                    pulumi.String("southeastasia"),
/// 			ProjectName:                 pulumi.String("sakanwar1204project"),
/// 			ProjectStatus:               pulumi.String(migrate.ProjectStatusActive),
/// 			ProvisioningState:           pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			PublicNetworkAccess:         pulumi.String("Disabled"),
/// 			ResourceGroupName:           pulumi.String("sakanwar"),
/// 			Tags: pulumi.StringMap{
/// 				"Migrate Project": pulumi.String("sakanwar-PE-SEA"),
/// 			},
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
/// resource "azure-native_migrate_assessmentprojectsoperation" "assessmentProjectsOperation" {
///   assessment_solution_id          = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa"
///   customer_storage_account_arm_id = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa"
///   location                        = "southeastasia"
///   project_name                    = "sakanwar1204project"
///   project_status                  = "Active"
///   provisioning_state              = "Succeeded"
///   public_network_access           = "Disabled"
///   resource_group_name             = "sakanwar"
///   tags = {
///     "Migrate Project" = "sakanwar-PE-SEA"
///   }
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
/// import com.pulumi.azurenative.migrate.AssessmentProjectsOperation;
/// import com.pulumi.azurenative.migrate.AssessmentProjectsOperationArgs;
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
///         var assessmentProjectsOperation = new AssessmentProjectsOperation("assessmentProjectsOperation", AssessmentProjectsOperationArgs.builder()
///             .assessmentSolutionId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa")
///             .customerStorageAccountArmId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa")
///             .location("southeastasia")
///             .projectName("sakanwar1204project")
///             .projectStatus("Active")
///             .provisioningState("Succeeded")
///             .publicNetworkAccess("Disabled")
///             .resourceGroupName("sakanwar")
///             .tags(Map.of("Migrate Project", "sakanwar-PE-SEA"))
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
/// const assessmentProjectsOperation = new azure_native.migrate.AssessmentProjectsOperation("assessmentProjectsOperation", {
///     assessmentSolutionId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///     customerStorageAccountArmId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///     location: "southeastasia",
///     projectName: "sakanwar1204project",
///     projectStatus: azure_native.migrate.ProjectStatus.Active,
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     publicNetworkAccess: "Disabled",
///     resourceGroupName: "sakanwar",
///     tags: {
///         "Migrate Project": "sakanwar-PE-SEA",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment_projects_operation = azure_native.migrate.AssessmentProjectsOperation("assessmentProjectsOperation",
///     assessment_solution_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///     customer_storage_account_arm_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa",
///     location="southeastasia",
///     project_name="sakanwar1204project",
///     project_status=azure_native.migrate.ProjectStatus.ACTIVE,
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     public_network_access="Disabled",
///     resource_group_name="sakanwar",
///     tags={
///         "Migrate Project": "sakanwar-PE-SEA",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   assessmentProjectsOperation:
///     type: azure-native:migrate:AssessmentProjectsOperation
///     properties:
///       assessmentSolutionId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa
///       customerStorageAccountArmId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sakanwar/providers/Microsoft.Storage/storageAccounts/sakanwar1204usa
///       location: southeastasia
///       projectName: sakanwar1204project
///       projectStatus: Active
///       provisioningState: Succeeded
///       publicNetworkAccess: Disabled
///       resourceGroupName: sakanwar
///       tags:
///         Migrate Project: sakanwar-PE-SEA
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
/// $ pulumi import azure-native:migrate:AssessmentProjectsOperation sakanwar1204project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}
/// ```
class AssessmentProjectsOperation extends pulumi.CustomResource {
  /// Assessment solution ARM id tracked by Microsoft.Migrate/migrateProjects.
  late final pulumi.Output<String?> assessmentSolutionId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time when this project was created. Date-Time represented in ISO-8601 format.
  late final pulumi.Output<String> createdTimestamp;
  /// The ARM id of the storage account used for interactions when public access is
  /// disabled.
  late final pulumi.Output<String?> customerStorageAccountArmId;
  /// The ARM id of service map workspace created by customer.
  late final pulumi.Output<String?> customerWorkspaceId;
  /// Location of service map workspace created by customer.
  late final pulumi.Output<String?> customerWorkspaceLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of private endpoint connections to the project.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Assessment project status.
  late final pulumi.Output<String?> projectStatus;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// This value can be set to 'enabled' to avoid breaking changes on existing
  /// customer resources and templates. If set to 'disabled', traffic over public
  /// interface is not allowed, and private endpoint connections would be the
  /// exclusive access method.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Endpoint at which the collector agent can call agent REST API.
  late final pulumi.Output<String> serviceEndpoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Time when this project was last updated. Date-Time represented in ISO-8601
  /// format.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [AssessmentProjectsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentProjectsOperation]. {@macro pulumi_migrate_assessment_projects_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentProjectsOperation(
    String name, {
    AssessmentProjectsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:AssessmentProjectsOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentSolutionId = registerOutput<String?>('assessmentSolutionId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customerStorageAccountArmId = registerOutput<String?>('customerStorageAccountArmId');
    customerWorkspaceId = registerOutput<String?>('customerWorkspaceId');
    customerWorkspaceLocation = registerOutput<String?>('customerWorkspaceLocation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    projectStatus = registerOutput<String?>('projectStatus');
    provisioningState = registerOutput<String?>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
