import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_settings_response.dart';
import 'community_args.dart';
import 'maintenance_mode_configuration_model_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Community Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
  late final pulumi.Output<List<Map<String, dynamic>>?> communityRoleAssignments;
  /// DNS Servers.
  late final pulumi.Output<List<String>?> dnsServers;
  /// SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  late final pulumi.Output<String?> firewallSku;
  /// List of services governed by a community.
  late final pulumi.Output<List<Map<String, dynamic>>?> governedServiceList;
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
    addressSpace = registerOutput<String?>('addressSpace');
    approvalSettings = registerOutput<ApprovalSettingsResponse?>('approvalSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApprovalSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    communityRoleAssignments = registerOutput<List<Map<String, dynamic>>?>('communityRoleAssignments');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    firewallSku = registerOutput<String?>('firewallSku');
    governedServiceList = registerOutput<List<Map<String, dynamic>>?>('governedServiceList');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceModeConfiguration = registerOutput<MaintenanceModeConfigurationModelResponse?>('maintenanceModeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceModeConfigurationModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedOnBehalfOfConfiguration = registerOutput<ManagedOnBehalfOfConfigurationResponse>('managedOnBehalfOfConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedOnBehalfOfConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.name = registerOutput<String>('name');
    policyOverride = registerOutput<String?>('policyOverride');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
