// ignore_for_file: unused_element, unnecessary_cast

import 'edge_machine_network_profile_response.dart';
import 'extension_profile_response_v1.dart';
import 'hardware_profile_response.dart';
import 'os_profile_response.dart';
import 'sbe_deployment_package_info_response.dart';
import 'storage_profile_response.dart';

/// Reported properties for edge machine.
class EdgeMachineReportedPropertiesResponse {
  /// Extension details for edge machine.
  final ExtensionProfileResponseV1 extensionProfile;
  /// Hardware related information for edge machine.
  final HardwareProfileResponse hardwareProfile;
  /// Last time data reported.
  final String lastUpdated;
  /// Network details for edge machine.
  final EdgeMachineNetworkProfileResponse networkProfile;
  /// OS Properties for edge machine.
  final OsProfileResponse osProfile;
  /// Solution builder extension (SBE) deployment package information.
  final SbeDeploymentPackageInfoResponse sbeDeploymentPackageInfo;
  /// Storage related information for edge machine.
  final StorageProfileResponse storageProfile;

  /// Creates a new [EdgeMachineReportedPropertiesResponse].
  /// [extensionProfile] Extension details for edge machine.
  /// [hardwareProfile] Hardware related information for edge machine.
  /// [lastUpdated] Last time data reported.
  /// [networkProfile] Network details for edge machine.
  /// [osProfile] OS Properties for edge machine.
  /// [sbeDeploymentPackageInfo] Solution builder extension (SBE) deployment package information.
  /// [storageProfile] Storage related information for edge machine.
  EdgeMachineReportedPropertiesResponse({
    required this.extensionProfile,
    required this.hardwareProfile,
    required this.lastUpdated,
    required this.networkProfile,
    required this.osProfile,
    required this.sbeDeploymentPackageInfo,
    required this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionProfile': extensionProfile.toMap(),
      'hardwareProfile': hardwareProfile.toMap(),
      'lastUpdated': lastUpdated,
      'networkProfile': networkProfile.toMap(),
      'osProfile': osProfile.toMap(),
      'sbeDeploymentPackageInfo': sbeDeploymentPackageInfo.toMap(),
      'storageProfile': storageProfile.toMap(),
    };
  }

  factory EdgeMachineReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EdgeMachineReportedPropertiesResponse(
      extensionProfile: ExtensionProfileResponseV1.fromMap((map['extensionProfile'] as Map).cast<String, dynamic>()),
      hardwareProfile: HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      lastUpdated: map['lastUpdated'] as String,
      networkProfile: EdgeMachineNetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: OsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      sbeDeploymentPackageInfo: SbeDeploymentPackageInfoResponse.fromMap((map['sbeDeploymentPackageInfo'] as Map).cast<String, dynamic>()),
      storageProfile: StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

