// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mab_container_extended_info.dart';
import 'mabcontainer_health_details.dart';

/// Container with items backed up using MAB backup engine.
class MabContainer {
  /// Agent version of this container.
  final String? agentVersion;
  /// Type of backup management for the container.
  final String? backupManagementType;
  /// Can the container be registered one more time.
  final bool? canReRegister;
  /// Health state of mab container.
  final String? containerHealthState;
  /// ContainerID represents the container.
  final double? containerId;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'Windows'.
  final String containerType;
  /// Additional information for this container
  final MabContainerExtendedInfo? extendedInfo;
  /// Friendly name of the container.
  final String? friendlyName;
  /// Status of health of the container.
  final String? healthStatus;
  /// Health details on this mab container.
  final List<MABContainerHealthDetails>? mabContainerHealthDetails;
  /// Type of the protectable object associated with this container
  final String? protectableObjectType;
  /// Number of items backed up in this container.
  final double? protectedItemCount;
  /// Status of registration of the container with the Recovery Services Vault.
  final String? registrationStatus;

  /// Creates a new [MabContainer].
  /// [agentVersion] Agent version of this container.
  /// [backupManagementType] Type of backup management for the container.
  /// [canReRegister] Can the container be registered one more time.
  /// [containerHealthState] Health state of mab container.
  /// [containerId] ContainerID represents the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [extendedInfo] Additional information for this container
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [mabContainerHealthDetails] Health details on this mab container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [protectedItemCount] Number of items backed up in this container.
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  MabContainer({
    this.agentVersion,
    this.backupManagementType,
    this.canReRegister,
    this.containerHealthState,
    this.containerId,
    required this.containerType,
    this.extendedInfo,
    this.friendlyName,
    this.healthStatus,
    this.mabContainerHealthDetails,
    this.protectableObjectType,
    this.protectedItemCount,
    this.registrationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'backupManagementType': ?backupManagementType,
      'canReRegister': ?canReRegister,
      'containerHealthState': ?containerHealthState,
      'containerId': ?containerId,
      'containerType': containerType,
      'extendedInfo': ?extendedInfo == null ? null : extendedInfo!.toMap(),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'mabContainerHealthDetails': ?mabContainerHealthDetails == null ? null : pulumi.Input.encodeList<MABContainerHealthDetails, Map<String, dynamic>>(mabContainerHealthDetails!, (value) => value.toMap()),
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'registrationStatus': ?registrationStatus,
    };
  }

  factory MabContainer.fromMap(Map<String, dynamic> map) {
    return MabContainer(
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      canReRegister: map['canReRegister'] == null ? null : map['canReRegister'] as bool,
      containerHealthState: map['containerHealthState'] == null ? null : map['containerHealthState'] as String,
      containerId: map['containerId'] == null ? null : map['containerId'] as double,
      containerType: map['containerType'] as String,
      extendedInfo: map['extendedInfo'] == null ? null : MabContainerExtendedInfo.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      mabContainerHealthDetails: map['mabContainerHealthDetails'] == null ? null : pulumi.Input.decodeList<MABContainerHealthDetails>(map['mabContainerHealthDetails'], (value) => MABContainerHealthDetails.fromMap((value as Map).cast<String, dynamic>())),
      protectableObjectType: map['protectableObjectType'] == null ? null : map['protectableObjectType'] as String,
      protectedItemCount: map['protectedItemCount'] == null ? null : map['protectedItemCount'] as double,
      registrationStatus: map['registrationStatus'] == null ? null : map['registrationStatus'] as String,
    );
  }
}

