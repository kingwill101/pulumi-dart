// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlavorDataResponse {
  /// Model flavor-specific data.
  final pulumi.Input<Map<String, String>>? data;

  /// Creates a new [FlavorDataResponse].
  /// [data] Model flavor-specific data.
  FlavorDataResponse({
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
    };
  }

  factory FlavorDataResponse.fromMap(Map<String, dynamic> map) {
    return FlavorDataResponse(
      data: map['data'] == null ? null : ((map['data'] as Map).cast<String, String>()).input(),
    );
  }
}

