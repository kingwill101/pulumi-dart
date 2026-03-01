// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_upgrade.dart';
import 'identity.dart';
import 'license_profile_machine_instance_view.dart';
import 'location_data.dart';
import 'machine_extension_instance_view.dart';
import 'osprofile.dart';
import 'service_statuses.dart';

/// {@template pulumi_hybridcompute_machine_args_doc}
/// The set of arguments for Machine.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_machine_args_doc}
class MachineArgs {
  /// The info of the machine w.r.t Agent Upgrade
  final pulumi.Input<AgentUpgrade>? agentUpgrade;
  /// Public Key that the client provides to be used during initial resource onboarding
  final pulumi.Input<String>? clientPublicKey;
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// Machine Extensions information (deprecated field)
  final pulumi.Input<List<MachineExtensionInstanceView>>? extensions;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  final pulumi.Input<String>? kind;
  /// Specifies the License related properties for a machine.
  final pulumi.Input<LicenseProfileMachineInstanceView>? licenseProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Metadata pertaining to the geographic location of the resource.
  final pulumi.Input<LocationData>? locationData;
  /// The name of the hybrid machine.
  final pulumi.Input<String>? machineName;
  /// Specifies whether any MS SQL instance is discovered on the machine.
  final pulumi.Input<String>? mssqlDiscovered;
  /// Specifies the operating system settings for the hybrid machine.
  final pulumi.Input<OSProfile>? osProfile;
  /// The type of Operating System (windows/linux).
  final pulumi.Input<String>? osType;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final pulumi.Input<String>? parentClusterResourceId;
  /// The resource id of the private link scope this machine is assigned to, if any.
  final pulumi.Input<String>? privateLinkScopeResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Statuses of dependent services that are reported back to ARM.
  final pulumi.Input<ServiceStatuses>? serviceStatuses;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the hybrid machine unique ID.
  final pulumi.Input<String>? vmId;

  /// Creates a new [MachineArgs].
  /// [agentUpgrade] The info of the machine w.r.t Agent Upgrade
  /// [clientPublicKey] Public Key that the client provides to be used during initial resource onboarding
  /// [expand] Expands referenced resources.
  /// [extensions] Machine Extensions information (deprecated field)
  /// [identity] Identity for the resource.
  /// [kind] Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  /// [licenseProfile] Specifies the License related properties for a machine.
  /// [location] The geo-location where the resource lives
  /// [locationData] Metadata pertaining to the geographic location of the resource.
  /// [machineName] The name of the hybrid machine.
  /// [mssqlDiscovered] Specifies whether any MS SQL instance is discovered on the machine.
  /// [osProfile] Specifies the operating system settings for the hybrid machine.
  /// [osType] The type of Operating System (windows/linux).
  /// [parentClusterResourceId] The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  /// [privateLinkScopeResourceId] The resource id of the private link scope this machine is assigned to, if any.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceStatuses] Statuses of dependent services that are reported back to ARM.
  /// [tags] Resource tags.
  /// [vmId] Specifies the hybrid machine unique ID.
  MachineArgs({
    pulumi.Output<AgentUpgrade>? agentUpgrade,
    pulumi.Output<String>? clientPublicKey,
    pulumi.Output<String>? expand,
    pulumi.Output<List<MachineExtensionInstanceView>>? extensions,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<LicenseProfileMachineInstanceView>? licenseProfile,
    pulumi.Output<String>? location,
    pulumi.Output<LocationData>? locationData,
    pulumi.Output<String>? machineName,
    pulumi.Output<String>? mssqlDiscovered,
    pulumi.Output<OSProfile>? osProfile,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? parentClusterResourceId,
    pulumi.Output<String>? privateLinkScopeResourceId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ServiceStatuses>? serviceStatuses,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vmId,
  }) :
      agentUpgrade = pulumi.Input.asOptionalInput<AgentUpgrade>(agentUpgrade),
      clientPublicKey = pulumi.Input.asOptionalInput<String>(clientPublicKey),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      extensions = pulumi.Input.asOptionalInput<List<MachineExtensionInstanceView>>(extensions),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      licenseProfile = pulumi.Input.asOptionalInput<LicenseProfileMachineInstanceView>(licenseProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      locationData = pulumi.Input.asOptionalInput<LocationData>(locationData),
      machineName = pulumi.Input.asOptionalInput<String>(machineName),
      mssqlDiscovered = pulumi.Input.asOptionalInput<String>(mssqlDiscovered),
      osProfile = pulumi.Input.asOptionalInput<OSProfile>(osProfile),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      parentClusterResourceId = pulumi.Input.asOptionalInput<String>(parentClusterResourceId),
      privateLinkScopeResourceId = pulumi.Input.asOptionalInput<String>(privateLinkScopeResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceStatuses = pulumi.Input.asOptionalInput<ServiceStatuses>(serviceStatuses),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmId = pulumi.Input.asOptionalInput<String>(vmId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUpgrade': ?pulumi.Input.mapOptionalInputValue<AgentUpgrade, Map<String, dynamic>>(agentUpgrade, (value) => value.toMap()),
      'clientPublicKey': ?clientPublicKey,
      'expand': ?expand,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<MachineExtensionInstanceView>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<MachineExtensionInstanceView, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'licenseProfile': ?pulumi.Input.mapOptionalInputValue<LicenseProfileMachineInstanceView, Map<String, dynamic>>(licenseProfile, (value) => value.toMap()),
      'location': ?location,
      'locationData': ?pulumi.Input.mapOptionalInputValue<LocationData, Map<String, dynamic>>(locationData, (value) => value.toMap()),
      'machineName': ?machineName,
      'mssqlDiscovered': ?mssqlDiscovered,
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'osType': ?osType,
      'parentClusterResourceId': ?parentClusterResourceId,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'resourceGroupName': resourceGroupName,
      'serviceStatuses': ?pulumi.Input.mapOptionalInputValue<ServiceStatuses, Map<String, dynamic>>(serviceStatuses, (value) => value.toMap()),
      'tags': ?tags,
      'vmId': ?vmId,
    };
  }

  factory MachineArgs.fromMap(Map<String, dynamic> map) {
    return MachineArgs(
      agentUpgrade: map['agentUpgrade'] == null ? null : pulumi.Output.create<AgentUpgrade>(AgentUpgrade.fromMap((map['agentUpgrade'] as Map).cast<String, dynamic>())),
      clientPublicKey: map['clientPublicKey'] == null ? null : pulumi.Output.create<String>(map['clientPublicKey'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<MachineExtensionInstanceView>>(pulumi.Input.decodeList<MachineExtensionInstanceView>(map['extensions'], (value) => MachineExtensionInstanceView.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      licenseProfile: map['licenseProfile'] == null ? null : pulumi.Output.create<LicenseProfileMachineInstanceView>(LicenseProfileMachineInstanceView.fromMap((map['licenseProfile'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locationData: map['locationData'] == null ? null : pulumi.Output.create<LocationData>(LocationData.fromMap((map['locationData'] as Map).cast<String, dynamic>())),
      machineName: map['machineName'] == null ? null : pulumi.Output.create<String>(map['machineName'] as String),
      mssqlDiscovered: map['mssqlDiscovered'] == null ? null : pulumi.Output.create<String>(map['mssqlDiscovered'] as String),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<OSProfile>(OSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      parentClusterResourceId: map['parentClusterResourceId'] == null ? null : pulumi.Output.create<String>(map['parentClusterResourceId'] as String),
      privateLinkScopeResourceId: map['privateLinkScopeResourceId'] == null ? null : pulumi.Output.create<String>(map['privateLinkScopeResourceId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceStatuses: map['serviceStatuses'] == null ? null : pulumi.Output.create<ServiceStatuses>(ServiceStatuses.fromMap((map['serviceStatuses'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmId: map['vmId'] == null ? null : pulumi.Output.create<String>(map['vmId'] as String),
    );
  }
}

