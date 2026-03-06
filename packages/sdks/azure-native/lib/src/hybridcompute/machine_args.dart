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
  const MachineArgs({
    this.agentUpgrade,
    this.clientPublicKey,
    this.expand,
    this.extensions,
    this.identity,
    this.kind,
    this.licenseProfile,
    this.location,
    this.locationData,
    this.machineName,
    this.mssqlDiscovered,
    this.osProfile,
    this.osType,
    this.parentClusterResourceId,
    this.privateLinkScopeResourceId,
    required this.resourceGroupName,
    this.serviceStatuses,
    this.tags,
    this.vmId,
  });

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
      agentUpgrade: (() { final guardedValue = map['agentUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientPublicKey: (() { final guardedValue = map['clientPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MachineExtensionInstanceView>(guardedValue, (value) => MachineExtensionInstanceView.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseProfile: (() { final guardedValue = map['licenseProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseProfileMachineInstanceView.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationData: (() { final guardedValue = map['locationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineName: (() { final guardedValue = map['machineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mssqlDiscovered: (() { final guardedValue = map['mssqlDiscovered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentClusterResourceId: (() { final guardedValue = map['parentClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceStatuses: (() { final guardedValue = map['serviceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceStatuses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

