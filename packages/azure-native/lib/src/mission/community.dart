import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_settings_response.dart';
import 'community_args.dart';
import 'governed_service_item_response.dart';
import 'maintenance_mode_configuration_model_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'role_assignment_item_response.dart';
import 'system_data_response.dart';

/// Community Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:mission:Community TestMyCommunity /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/communities/{communityName}
/// ```
class Community extends pulumi.CustomResource {
  /// Address Space.
  late final pulumi.Output<String?> addressSpace;
  /// Approval requirements for various actions on the community's resources.
  late final pulumi.Output<ApprovalSettingsResponse?> approvalSettings;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Community role assignments
  late final pulumi.Output<List<RoleAssignmentItemResponse>?> communityRoleAssignments;
  /// DNS Servers.
  late final pulumi.Output<List<String>?> dnsServers;
  /// SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  late final pulumi.Output<String?> firewallSku;
  /// List of services governed by a community.
  late final pulumi.Output<List<GovernedServiceItemResponse>?> governedServiceList;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maintenance Mode configuration.
  late final pulumi.Output<MaintenanceModeConfigurationModelResponse?> maintenanceModeConfiguration;
  /// Managed On Behalf Of Configuration.
  late final pulumi.Output<ManagedOnBehalfOfConfigurationResponse> managedOnBehalfOfConfiguration;
  /// Managed resource group name.
  late final pulumi.Output<String> managedResourceGroupName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
  late final pulumi.Output<String?> policyOverride;
  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;
  /// List of resource ids created by communities.
  late final pulumi.Output<List<String>> resourceCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Community].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Community]. {@macro pulumi_mission_community_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Community(
    String name, {
    CommunityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:Community',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressSpace = registerOutput<String?>('addressSpace');
    this.approvalSettings = registerOutput<ApprovalSettingsResponse?>('approvalSettings');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.communityRoleAssignments = registerOutput<List<RoleAssignmentItemResponse>?>('communityRoleAssignments');
    this.dnsServers = registerOutput<List<String>?>('dnsServers');
    this.firewallSku = registerOutput<String?>('firewallSku');
    this.governedServiceList = registerOutput<List<GovernedServiceItemResponse>?>('governedServiceList');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.maintenanceModeConfiguration = registerOutput<MaintenanceModeConfigurationModelResponse?>('maintenanceModeConfiguration');
    this.managedOnBehalfOfConfiguration = registerOutput<ManagedOnBehalfOfConfigurationResponse>('managedOnBehalfOfConfiguration');
    this.managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.name = registerOutput<String>('name');
    this.policyOverride = registerOutput<String?>('policyOverride');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceCollection = registerOutput<List<String>>('resourceCollection');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
