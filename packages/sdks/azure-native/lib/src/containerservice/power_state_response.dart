// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the Power State of the cluster
class PowerStateResponse {
  /// Tells whether the cluster is Running or Stopped
  final pulumi.Input<String>? code;

  /// Creates a new [PowerStateResponse].
  /// [code] Tells whether the cluster is Running or Stopped
  PowerStateResponse({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory PowerStateResponse.fromMap(Map<String, dynamic> map) {
    return PowerStateResponse(
      code: map['code'] == null ? null : (map['code'] as String).input(),
    );
  }
}

