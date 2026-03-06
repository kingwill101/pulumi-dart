// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_profile_response.dart';
import 'hci_network_profile_response.dart';
import 'hci_os_profile_response.dart';
import 'sbe_deployment_package_info_response.dart';

/// The device Configuration for HCI device.
class HciReportedPropertiesResponse {
  /// edge device state.
  final pulumi.Input<String> deviceState;
  /// Extensions details for edge device.
  final pulumi.Input<ExtensionProfileResponse> extensionProfile;
  /// HCI device network information.
  final pulumi.Input<HciNetworkProfileResponse> networkProfile;
  /// HCI device OS specific information.
  final pulumi.Input<HciOsProfileResponse> osProfile;
  /// Solution builder extension (SBE) deployment package information.
  final pulumi.Input<SbeDeploymentPackageInfoResponse> sbeDeploymentPackageInfo;

  /// Creates a new [HciReportedPropertiesResponse].
  /// [deviceState] edge device state.
  /// [extensionProfile] Extensions details for edge device.
  /// [networkProfile] HCI device network information.
  /// [osProfile] HCI device OS specific information.
  /// [sbeDeploymentPackageInfo] Solution builder extension (SBE) deployment package information.
  const HciReportedPropertiesResponse({
    required this.deviceState,
    required this.extensionProfile,
    required this.networkProfile,
    required this.osProfile,
    required this.sbeDeploymentPackageInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceState': deviceState,
      'extensionProfile': pulumi.Input.mapInputValue<ExtensionProfileResponse, Map<String, dynamic>>(extensionProfile, (value) => value.toMap()),
      'networkProfile': pulumi.Input.mapInputValue<HciNetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<HciOsProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'sbeDeploymentPackageInfo': pulumi.Input.mapInputValue<SbeDeploymentPackageInfoResponse, Map<String, dynamic>>(sbeDeploymentPackageInfo, (value) => value.toMap()),
    };
  }

  factory HciReportedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HciReportedPropertiesResponse(
      deviceState: pulumi.Input.fromValue(map['deviceState'] as String),
      extensionProfile: pulumi.Input.fromValue(ExtensionProfileResponse.fromMap((map['extensionProfile']! as Map).cast<String, dynamic>())),
      networkProfile: pulumi.Input.fromValue(HciNetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())),
      osProfile: pulumi.Input.fromValue(HciOsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>())),
      sbeDeploymentPackageInfo: pulumi.Input.fromValue(SbeDeploymentPackageInfoResponse.fromMap((map['sbeDeploymentPackageInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

