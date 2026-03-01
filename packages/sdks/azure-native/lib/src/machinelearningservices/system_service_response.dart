// ignore_for_file: unused_element, unnecessary_cast


/// A system service running on a compute.
class SystemServiceResponse {
  /// Public IP address
  final String publicIpAddress;
  /// The type of this system service.
  final String systemServiceType;
  /// The version for this type.
  final String version;

  /// Creates a new [SystemServiceResponse].
  /// [publicIpAddress] Public IP address
  /// [systemServiceType] The type of this system service.
  /// [version] The version for this type.
  SystemServiceResponse({
    required this.publicIpAddress,
    required this.systemServiceType,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIpAddress': publicIpAddress,
      'systemServiceType': systemServiceType,
      'version': version,
    };
  }

  factory SystemServiceResponse.fromMap(Map<String, dynamic> map) {
    return SystemServiceResponse(
      publicIpAddress: map['publicIpAddress'] as String,
      systemServiceType: map['systemServiceType'] as String,
      version: map['version'] as String,
    );
  }
}

