// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A system service running on a compute.
class SystemServiceResponse {
  /// Public IP address
  final pulumi.Input<String> publicIpAddress;
  /// The type of this system service.
  final pulumi.Input<String> systemServiceType;
  /// The version for this type.
  final pulumi.Input<String> version;

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
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
      systemServiceType: pulumi.Input.fromValue(map['systemServiceType'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

