// ignore_for_file: unused_element, unnecessary_cast


/// OS configurations for HCI device.
class HciOsProfileResponse {
  /// Version of assembly present on device
  final String assemblyVersion;
  /// The boot type of the device. e.g. UEFI, Legacy etc
  final String bootType;

  /// Creates a new [HciOsProfileResponse].
  /// [assemblyVersion] Version of assembly present on device
  /// [bootType] The boot type of the device. e.g. UEFI, Legacy etc
  HciOsProfileResponse({
    required this.assemblyVersion,
    required this.bootType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyVersion': assemblyVersion,
      'bootType': bootType,
    };
  }

  factory HciOsProfileResponse.fromMap(Map<String, dynamic> map) {
    return HciOsProfileResponse(
      assemblyVersion: map['assemblyVersion'] as String,
      bootType: map['bootType'] as String,
    );
  }
}

