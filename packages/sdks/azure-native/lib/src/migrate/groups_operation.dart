import 'package:pulumi/pulumi.dart' as pulumi;
import 'groups_operation_args.dart';
import 'system_data_response.dart';

/// Group resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GroupsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupsOperation = new AzureNative.Migrate.GroupsOperation("groupsOperation", new()
///     {
///         GroupName = "kuchatur-test",
///         GroupType = AzureNative.Migrate.GroupType.Default,
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ResourceGroupName = "ayagrawrg",
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
/// 		_, err := migrate.NewGroupsOperation(ctx, "groupsOperation", &migrate.GroupsOperationArgs{
/// 			GroupName:         pulumi.String("kuchatur-test"),
/// 			GroupType:         pulumi.String(migrate.GroupTypeDefault),
/// 			ProjectName:       pulumi.String("app18700project"),
/// 			ProvisioningState: pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ResourceGroupName: pulumi.String("ayagrawrg"),
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
/// import com.pulumi.azurenative.migrate.GroupsOperation;
/// import com.pulumi.azurenative.migrate.GroupsOperationArgs;
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
///         var groupsOperation = new GroupsOperation("groupsOperation", GroupsOperationArgs.builder()
///             .groupName("kuchatur-test")
///             .groupType("Default")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .resourceGroupName("ayagrawrg")
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
/// const groupsOperation = new azure_native.migrate.GroupsOperation("groupsOperation", {
///     groupName: "kuchatur-test",
///     groupType: azure_native.migrate.GroupType.Default,
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     resourceGroupName: "ayagrawrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// groups_operation = azure_native.migrate.GroupsOperation("groupsOperation",
///     group_name="kuchatur-test",
///     group_type=azure_native.migrate.GroupType.DEFAULT,
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     resource_group_name="ayagrawrg")
///
/// ```
///
/// ```yaml
/// resources:
///   groupsOperation:
///     type: azure-native:migrate:GroupsOperation
///     properties:
///       groupName: kuchatur-test
///       groupType: Default
///       projectName: app18700project
///       provisioningState: Succeeded
///       resourceGroupName: ayagrawrg
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
/// $ pulumi import azure-native:migrate:GroupsOperation kuchatur-test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}
/// ```
class GroupsOperation extends pulumi.CustomResource {
  /// If the assessments are in running state.
  late final pulumi.Output<bool> areAssessmentsRunning;

  /// List of References to Assessments created on this group.
  late final pulumi.Output<List<String>> assessments;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Time when this group was created. Date-Time represented in ISO-8601 format.
  late final pulumi.Output<String> createdTimestamp;

  /// Whether the group has been created and is valid.
  late final pulumi.Output<String> groupStatus;

  /// The type of group.
  late final pulumi.Output<String?> groupType;

  /// Number of machines part of this group.
  late final pulumi.Output<int> machineCount;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;

  /// List of assessment types supported on this group.
  late final pulumi.Output<List<String>?> supportedAssessmentTypes;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Time when this group was last updated. Date-Time represented in ISO-8601 format.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [GroupsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupsOperation]. {@macro pulumi_migrate_groups_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupsOperation(
    String name, {
    GroupsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:GroupsOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    areAssessmentsRunning = registerOutput<bool>('areAssessmentsRunning');
    assessments = registerOutput<List<String>>('assessments');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    groupStatus = registerOutput<String>('groupStatus');
    groupType = registerOutput<String?>('groupType');
    machineCount = registerOutput<int>('machineCount');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    supportedAssessmentTypes = registerOutput<List<String>?>(
      'supportedAssessmentTypes',
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
