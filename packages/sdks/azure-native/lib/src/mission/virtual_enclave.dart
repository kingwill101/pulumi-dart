import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_address_spaces_model_response.dart';
import 'enclave_default_settings_model_response.dart';
import 'enclave_virtual_network_model_response.dart';
import 'maintenance_mode_configuration_model_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'virtual_enclave_args.dart';

/// Virtual Enclave Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:mission:VirtualEnclave TestMyEnclave /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/virtualEnclaves/{virtualEnclaveName}
/// ```
class VirtualEnclave extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Deploy Bastion service (True or False).
  late final pulumi.Output<bool?> bastionEnabled;

  /// Community Resource Id.
  late final pulumi.Output<String> communityResourceId;

  /// Enclave Address Spaces
  late final pulumi.Output<EnclaveAddressSpacesModelResponse>
  enclaveAddressSpaces;

  /// Enclave default settings.
  late final pulumi.Output<EnclaveDefaultSettingsModelResponse?>
  enclaveDefaultSettings;

  /// Enclave role assignments
  late final pulumi.Output<List<Map<String, dynamic>>?> enclaveRoleAssignments;

  /// Virtual Network.
  late final pulumi.Output<EnclaveVirtualNetworkModelResponse>
  enclaveVirtualNetwork;

  /// Enclave specific policies
  late final pulumi.Output<List<Map<String, dynamic>>?> governedServiceList;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Maintenance Mode configuration.
  late final pulumi.Output<MaintenanceModeConfigurationModelResponse?>
  maintenanceModeConfiguration;

  /// Managed On Behalf Of Configuration.
  late final pulumi.Output<ManagedOnBehalfOfConfigurationResponse>
  managedOnBehalfOfConfiguration;

  /// Managed resource group name.
  late final pulumi.Output<String> managedResourceGroupName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;

  /// List of resource ids created by Virtual Enclave.
  late final pulumi.Output<List<String>> resourceCollection;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Workload role assignments
  late final pulumi.Output<List<Map<String, dynamic>>?> workloadRoleAssignments;

  /// Creates a new [VirtualEnclave].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualEnclave]. {@macro pulumi_mission_virtual_enclave_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualEnclave(
    String name, {
    VirtualEnclaveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mission:VirtualEnclave',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bastionEnabled = registerOutput<bool?>('bastionEnabled');
    communityResourceId = registerOutput<String>('communityResourceId');
    enclaveAddressSpaces = registerOutput<EnclaveAddressSpacesModelResponse>(
      'enclaveAddressSpaces',
    );
    enclaveDefaultSettings =
        registerOutput<EnclaveDefaultSettingsModelResponse?>(
          'enclaveDefaultSettings',
        );
    enclaveRoleAssignments = registerOutput<List<Map<String, dynamic>>?>(
      'enclaveRoleAssignments',
    );
    enclaveVirtualNetwork = registerOutput<EnclaveVirtualNetworkModelResponse>(
      'enclaveVirtualNetwork',
    );
    governedServiceList = registerOutput<List<Map<String, dynamic>>?>(
      'governedServiceList',
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    maintenanceModeConfiguration =
        registerOutput<MaintenanceModeConfigurationModelResponse?>(
          'maintenanceModeConfiguration',
        );
    managedOnBehalfOfConfiguration =
        registerOutput<ManagedOnBehalfOfConfigurationResponse>(
          'managedOnBehalfOfConfiguration',
        );
    managedResourceGroupName = registerOutput<String>(
      'managedResourceGroupName',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    workloadRoleAssignments = registerOutput<List<Map<String, dynamic>>?>(
      'workloadRoleAssignments',
    );
  }
}
