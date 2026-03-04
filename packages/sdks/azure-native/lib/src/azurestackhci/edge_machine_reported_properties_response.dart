// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_machine_network_profile_response.dart';
import 'extension_profile_response_v1.dart';
import 'hardware_profile_response.dart';
import 'os_profile_response.dart';
import 'sbe_deployment_package_info_response.dart';
import 'storage_profile_response.dart';

/// Reported properties for edge machine.
class EdgeMachineReportedPropertiesResponse {
  /// Extension details for edge machine.
  final pulumi.Input<ExtensionProfileResponseV1> extensionProfile;

  /// Hardware related information for edge machine.
  final pulumi.Input<HardwareProfileResponse> hardwareProfile;

  /// Last time data reported.
  final pulumi.Input<String> lastUpdated;

  /// Network details for edge machine.
  final pulumi.Input<EdgeMachineNetworkProfileResponse> networkProfile;

  /// OS Properties for edge machine.
  final pulumi.Input<OsProfileResponse> osProfile;

  /// Solution builder extension (SBE) deployment package information.
  final pulumi.Input<SbeDeploymentPackageInfoResponse> sbeDeploymentPackageInfo;

  /// Storage related information for edge machine.
  final pulumi.Input<StorageProfileResponse> storageProfile;

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
      'extensionProfile':
          pulumi.Input.mapInputValue<
            ExtensionProfileResponseV1,
            Map<String, dynamic>
          >(extensionProfile, (value) => value.toMap()),
      'hardwareProfile':
          pulumi.Input.mapInputValue<
            HardwareProfileResponse,
            Map<String, dynamic>
          >(hardwareProfile, (value) => value.toMap()),
      'lastUpdated': lastUpdated,
      'networkProfile':
          pulumi.Input.mapInputValue<
            EdgeMachineNetworkProfileResponse,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'osProfile':
          pulumi.Input.mapInputValue<OsProfileResponse, Map<String, dynamic>>(
            osProfile,
            (value) => value.toMap(),
          ),
      'sbeDeploymentPackageInfo':
          pulumi.Input.mapInputValue<
            SbeDeploymentPackageInfoResponse,
            Map<String, dynamic>
          >(sbeDeploymentPackageInfo, (value) => value.toMap()),
      'storageProfile':
          pulumi.Input.mapInputValue<
            StorageProfileResponse,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
    };
  }

  factory EdgeMachineReportedPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeMachineReportedPropertiesResponse(
      extensionProfile: pulumi.Input.fromValue(
        ExtensionProfileResponseV1.fromMap(
          (map['extensionProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      hardwareProfile: pulumi.Input.fromValue(
        HardwareProfileResponse.fromMap(
          (map['hardwareProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      networkProfile: pulumi.Input.fromValue(
        EdgeMachineNetworkProfileResponse.fromMap(
          (map['networkProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      osProfile: pulumi.Input.fromValue(
        OsProfileResponse.fromMap(
          (map['osProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      sbeDeploymentPackageInfo: pulumi.Input.fromValue(
        SbeDeploymentPackageInfoResponse.fromMap(
          (map['sbeDeploymentPackageInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageProfile: pulumi.Input.fromValue(
        StorageProfileResponse.fromMap(
          (map['storageProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
