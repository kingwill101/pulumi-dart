// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network properties.
class NetworkResponse {
  /// The flag indicating whether public ip is requested.
  final pulumi.Input<String> publicNetworkAccess;

  /// Creates a new [NetworkResponse].
  /// [publicNetworkAccess] The flag indicating whether public ip is requested.
  const NetworkResponse({
    required this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicNetworkAccess': publicNetworkAccess,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      publicNetworkAccess: pulumi.Input.fromValue(map['publicNetworkAccess'] as String),
    );
  }
}
