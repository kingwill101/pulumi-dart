// ignore_for_file: unused_element, unnecessary_cast


/// OS configurations for HCI device.
class OsProfileResponse {
  /// Version of assembly present on device
  final String assemblyVersion;
  /// OS Base Image Version
  final String baseImageVersion;
  /// The boot type of the device. e.g. UEFI, Legacy etc
  final String bootType;
  /// OS Build Number
  final String buildNumber;
  /// OS Image Version
  final String imageVersion;
  /// OS SKU (e.g., “ Microsoft Azure Linux ROE“, “Azure Stack HCI", "Microsoft Azure Linux 3.0")
  final String osSku;
  /// OS type (“windows", “linux”)
  final String osType;
  /// OS Version
  final String osVersion;

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
      assemblyVersion: map['assemblyVersion'] as String,
      baseImageVersion: map['baseImageVersion'] as String,
      bootType: map['bootType'] as String,
      buildNumber: map['buildNumber'] as String,
      imageVersion: map['imageVersion'] as String,
      osSku: map['osSku'] as String,
      osType: map['osType'] as String,
      osVersion: map['osVersion'] as String,
    );
  }
}

