// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OS configurations for HCI device.
class HciOsProfileResponse {
  /// Version of assembly present on device
  final pulumi.Input<String> assemblyVersion;

  /// The boot type of the device. e.g. UEFI, Legacy etc
  final pulumi.Input<String> bootType;

  /// Creates a new [HciOsProfileResponse].
  /// [assemblyVersion] Version of assembly present on device
  /// [bootType] The boot type of the device. e.g. UEFI, Legacy etc
  HciOsProfileResponse({required this.assemblyVersion, required this.bootType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyVersion': assemblyVersion,
      'bootType': bootType,
    };
  }

  factory HciOsProfileResponse.fromMap(Map<String, dynamic> map) {
    return HciOsProfileResponse(
      assemblyVersion: pulumi.Input.fromValue(map['assemblyVersion'] as String),
      bootType: pulumi.Input.fromValue(map['bootType'] as String),
    );
  }
}
