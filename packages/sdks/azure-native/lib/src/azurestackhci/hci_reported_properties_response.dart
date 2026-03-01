// ignore_for_file: unused_element, unnecessary_cast

import 'extension_profile_response.dart';
import 'hci_network_profile_response.dart';
import 'hci_os_profile_response.dart';
import 'sbe_deployment_package_info_response.dart';

/// The device Configuration for HCI device.
class HciReportedPropertiesResponse {
  /// edge device state.
  final String deviceState;
  /// Extensions details for edge device.
  final ExtensionProfileResponse extensionProfile;
  /// HCI device network information.
  final HciNetworkProfileResponse networkProfile;
  /// HCI device OS specific information.
  final HciOsProfileResponse osProfile;
  /// Solution builder extension (SBE) deployment package information.
  final SbeDeploymentPackageInfoResponse sbeDeploymentPackageInfo;

  /// Creates a new [HciReportedPropertiesResponse].
  /// [deviceState] edge device state.
  /// [extensionProfile] Extensions details for edge device.
  /// [networkProfile] HCI device network information.
  /// [osProfile] HCI device OS specific information.
  /// [sbeDeploymentPackageInfo] Solution builder extension (SBE) deployment package information.
  HciReportedPropertiesResponse({
    required this.deviceState,
    required this.extensionProfile,
    required this.networkProfile,
    required this.osProfile,
    required this.sbeDeploymentPackageInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceState': deviceState,
      'extensionProfile': extensionProfile.toMap(),
      'networkProfile': networkProfile.toMap(),
      'osProfile': osProfile.toMap(),
      'sbeDeploymentPackageInfo': sbeDeploymentPackageInfo.toMap(),
    };
  }

  factory HciReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciReportedPropertiesResponse(
      deviceState: map['deviceState'] as String,
      extensionProfile: ExtensionProfileResponse.fromMap((map['extensionProfile'] as Map).cast<String, dynamic>()),
      networkProfile: HciNetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: HciOsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      sbeDeploymentPackageInfo: SbeDeploymentPackageInfoResponse.fromMap((map['sbeDeploymentPackageInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

