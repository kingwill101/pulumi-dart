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
  OsProfileResponse({
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
      assemblyVersion: (map['assemblyVersion'] as String).input(),
      baseImageVersion: (map['baseImageVersion'] as String).input(),
      bootType: (map['bootType'] as String).input(),
      buildNumber: (map['buildNumber'] as String).input(),
      imageVersion: (map['imageVersion'] as String).input(),
      osSku: (map['osSku'] as String).input(),
      osType: (map['osType'] as String).input(),
      osVersion: (map['osVersion'] as String).input(),
    );
  }
}

