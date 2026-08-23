// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OS configurations for HCI device.
class OsProfileResponse {
  /// Version of assembly present on device
  final pulumi.Input<String> assemblyVersion;
  /// OS Base Image Version
  final pulumi.Input<String> baseImageVersion;
  /// The boot type of the device. e.g. UEFI, Legacy etc
  final pulumi.Input<String> bootType;
  /// OS Build Number
  final pulumi.Input<String> buildNumber;
  /// OS Image Version
  final pulumi.Input<String> imageVersion;
  /// OS SKU (e.g., “ Microsoft Azure Linux ROE“, “Azure Stack HCI", "Microsoft Azure Linux 3.0")
  final pulumi.Input<String> osSku;
  /// OS type (“windows", “linux”)
  final pulumi.Input<String> osType;
  /// OS Version
  final pulumi.Input<String> osVersion;

  /// Creates a new [OsProfileResponse].
  /// [assemblyVersion] Version of assembly present on device
  /// [baseImageVersion] OS Base Image Version
  /// [bootType] The boot type of the device. e.g. UEFI, Legacy etc
  /// [buildNumber] OS Build Number
  /// [imageVersion] OS Image Version
  /// [osSku] OS SKU (e.g., “ Microsoft Azure Linux ROE“, “Azure Stack HCI", "Microsoft Azure Linux 3.0")
  /// [osType] OS type (“windows", “linux”)
  /// [osVersion] OS Version
  const OsProfileResponse({
    required this.assemblyVersion,
    required this.baseImageVersion,
    required this.bootType,
    required this.buildNumber,
    required this.imageVersion,
    required this.osSku,
    required this.osType,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyVersion': assemblyVersion,
      'baseImageVersion': baseImageVersion,
      'bootType': bootType,
      'buildNumber': buildNumber,
      'imageVersion': imageVersion,
      'osSku': osSku,
      'osType': osType,
      'osVersion': osVersion,
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      assemblyVersion: pulumi.Input.fromValue(map['assemblyVersion'] as String),
      baseImageVersion: pulumi.Input.fromValue(map['baseImageVersion'] as String),
      bootType: pulumi.Input.fromValue(map['bootType'] as String),
      buildNumber: pulumi.Input.fromValue(map['buildNumber'] as String),
      imageVersion: pulumi.Input.fromValue(map['imageVersion'] as String),
      osSku: pulumi.Input.fromValue(map['osSku'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
    );
  }
}
