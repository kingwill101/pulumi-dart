import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'project_environment_type_args.dart';
import 'project_environment_type_update_properties_response_creator_role_assignment.dart';
import 'system_data_response.dart';
import 'user_role_assignment_response.dart';

/// Represents an environment type.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:devcenter:ProjectEnvironmentType DevTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}/environmentTypes/{environmentTypeName}
/// ```
class ProjectEnvironmentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The role definition assigned to the environment creator on backing resources.
  late final pulumi.Output<ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment?> creatorRoleAssignment;
  /// Id of a subscription that the environment type will be mapped to. The environment's resources will be deployed into this subscription.
  late final pulumi.Output<String?> deploymentTargetId;
  /// The display name of the project environment type.
  late final pulumi.Output<String?> displayName;
  /// The number of environments of this type.
  late final pulumi.Output<int> environmentCount;
  /// Managed identity properties
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location for the environment type
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Defines whether this Environment Type can be used in this Project.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Role Assignments created on environment backing resources. This is a mapping from a user object ID to an object of role definition IDs.
  late final pulumi.Output<Map<String, UserRoleAssignmentResponse>?> userRoleAssignments;

  /// Creates a new [ProjectEnvironmentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectEnvironmentType]. {@macro pulumi_devcenter_project_environment_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectEnvironmentType(
    String name, {
    ProjectEnvironmentTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:ProjectEnvironmentType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creatorRoleAssignment = registerOutput<ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment?>('creatorRoleAssignment');
    this.deploymentTargetId = registerOutput<String?>('deploymentTargetId');
    this.displayName = registerOutput<String?>('displayName');
    this.environmentCount = registerOutput<int>('environmentCount');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.status = registerOutput<String?>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.userRoleAssignments = registerOutput<Map<String, UserRoleAssignmentResponse>?>('userRoleAssignments');
  }
}
