// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlavorDataResponse {
  /// Model flavor-specific data.
  final pulumi.Input<Map<String, String>>? data;

  /// Creates a new [FlavorDataResponse].
  /// [data] Model flavor-specific data.
  const FlavorDataResponse({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
    };
  }

  factory FlavorDataResponse.fromMap(Map<String, dynamic> map) {
    return FlavorDataResponse(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

