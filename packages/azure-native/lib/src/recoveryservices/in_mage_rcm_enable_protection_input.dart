// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_disk_input.dart';
import 'in_mage_rcm_disks_default_input.dart';
import 'security_profile_properties.dart';
import 'user_created_resource_tag.dart';

/// InMageRcm specific enable protection input.
class InMageRcmEnableProtectionInput {
  /// The default disk input.
  final InMageRcmDisksDefaultInput? disksDefault;
  /// The disks to include list.
  final List<InMageRcmDiskInput>? disksToInclude;
  /// The ARM Id of discovered machine.
  final String fabricDiscoveryMachineId;
  /// The class type.
  /// Expected value is 'InMageRcm'.
  final String instanceType;
  /// The license type.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// The multi VM group name.
  final String? multiVmGroupName;
  /// The process server Id.
  final String processServerId;
  /// The run-as account Id.
  final String? runAsAccountId;
  /// The tags for the seed managed disks.
  final List<UserCreatedResourceTag>? seedManagedDiskTags;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// The target availability set ARM Id.
  final String? targetAvailabilitySetId;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final String? targetBootDiagnosticsStorageAccountId;
  /// The tags for the target managed disks.
  final List<UserCreatedResourceTag>? targetManagedDiskTags;
  /// The selected target network ARM Id.
  final String? targetNetworkId;
  /// The tags for the target NICs.
  final List<UserCreatedResourceTag>? targetNicTags;
  /// The target proximity placement group Id.
  final String? targetProximityPlacementGroupId;
  /// The target resource group ARM Id.
  final String targetResourceGroupId;
  /// The selected target subnet name.
  final String? targetSubnetName;
  /// The target VM name.
  final String? targetVmName;
  /// The target VM security profile.
  final SecurityProfileProperties? targetVmSecurityProfile;
  /// The target VM size.
  final String? targetVmSize;
  /// The target VM tags.
  final List<UserCreatedResourceTag>? targetVmTags;
  /// The selected test network ARM Id.
  final String? testNetworkId;
  /// The selected test subnet name.
  final String? testSubnetName;
  /// The OS name selected by user.
  final String? userSelectedOSName;

  /// Creates a new [InMageRcmEnableProtectionInput].
  /// [disksDefault] The default disk input.
  /// [disksToInclude] The disks to include list.
  /// [fabricDiscoveryMachineId] The ARM Id of discovered machine.
  /// [instanceType] The class type.
  /// [licenseType] The license type.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [multiVmGroupName] The multi VM group name.
  /// [processServerId] The process server Id.
  /// [runAsAccountId] The run-as account Id.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilitySetId] The target availability set ARM Id.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetBootDiagnosticsStorageAccountId] The target boot diagnostics storage account ARM Id.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNetworkId] The selected target network ARM Id.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetResourceGroupId] The target resource group ARM Id.
  /// [targetSubnetName] The selected target subnet name.
  /// [targetVmName] The target VM name.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [testNetworkId] The selected test network ARM Id.
  /// [testSubnetName] The selected test subnet name.
  /// [userSelectedOSName] The OS name selected by user.
  InMageRcmEnableProtectionInput({
    this.disksDefault,
    this.disksToInclude,
    required this.fabricDiscoveryMachineId,
    required this.instanceType,
    this.licenseType,
    this.linuxLicenseType,
    this.multiVmGroupName,
    required this.processServerId,
    this.runAsAccountId,
    this.seedManagedDiskTags,
    this.sqlServerLicenseType,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetBootDiagnosticsStorageAccountId,
    this.targetManagedDiskTags,
    this.targetNetworkId,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    required this.targetResourceGroupId,
    this.targetSubnetName,
    this.targetVmName,
    this.targetVmSecurityProfile,
    this.targetVmSize,
    this.targetVmTags,
    this.testNetworkId,
    this.testSubnetName,
    this.userSelectedOSName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disksDefault': ?disksDefault == null ? null : disksDefault!.toMap(),
      'disksToInclude': ?disksToInclude == null ? null : pulumi.Input.encodeList<InMageRcmDiskInput, Map<String, dynamic>>(disksToInclude!, (value) => value.toMap()),
      'fabricDiscoveryMachineId': fabricDiscoveryMachineId,
      'instanceType': instanceType,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'multiVmGroupName': ?multiVmGroupName,
      'processServerId': processServerId,
      'runAsAccountId': ?runAsAccountId,
      'seedManagedDiskTags': ?seedManagedDiskTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(seedManagedDiskTags!, (value) => value.toMap()),
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetManagedDiskTags': ?targetManagedDiskTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(targetManagedDiskTags!, (value) => value.toMap()),
      'targetNetworkId': ?targetNetworkId,
      'targetNicTags': ?targetNicTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(targetNicTags!, (value) => value.toMap()),
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetSubnetName': ?targetSubnetName,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags == null ? null : pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(targetVmTags!, (value) => value.toMap()),
      'testNetworkId': ?testNetworkId,
      'testSubnetName': ?testSubnetName,
      'userSelectedOSName': ?userSelectedOSName,
    };
  }

  factory InMageRcmEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmEnableProtectionInput(
      disksDefault: map['disksDefault'] == null ? null : InMageRcmDisksDefaultInput.fromMap((map['disksDefault'] as Map).cast<String, dynamic>()),
      disksToInclude: map['disksToInclude'] == null ? null : pulumi.Input.decodeList<InMageRcmDiskInput>(map['disksToInclude'], (value) => InMageRcmDiskInput.fromMap((value as Map).cast<String, dynamic>())),
      fabricDiscoveryMachineId: map['fabricDiscoveryMachineId'] as String,
      instanceType: map['instanceType'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      multiVmGroupName: map['multiVmGroupName'] == null ? null : map['multiVmGroupName'] as String,
      processServerId: map['processServerId'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTag>(map['seedManagedDiskTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>())),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : map['targetBootDiagnosticsStorageAccountId'] as String,
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetManagedDiskTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>())),
      targetNetworkId: map['targetNetworkId'] == null ? null : map['targetNetworkId'] as String,
      targetNicTags: map['targetNicTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetNicTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>())),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] as String,
      targetSubnetName: map['targetSubnetName'] == null ? null : map['targetSubnetName'] as String,
      targetVmName: map['targetVmName'] == null ? null : map['targetVmName'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : SecurityProfileProperties.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetVmTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>())),
      testNetworkId: map['testNetworkId'] == null ? null : map['testNetworkId'] as String,
      testSubnetName: map['testSubnetName'] == null ? null : map['testSubnetName'] as String,
      userSelectedOSName: map['userSelectedOSName'] == null ? null : map['userSelectedOSName'] as String,
    );
  }
}

