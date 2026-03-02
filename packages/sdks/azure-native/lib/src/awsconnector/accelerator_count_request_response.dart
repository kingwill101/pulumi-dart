// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AcceleratorCountRequest
class AcceleratorCountRequestResponse {
  /// The maximum value.
  final pulumi.Input<int>? max;
  /// The minimum value.
  final pulumi.Input<int>? min;

  /// Creates a new [AcceleratorCountRequestResponse].
  /// [max] The maximum value.
  /// [min] The minimum value.
  AcceleratorCountRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory AcceleratorCountRequestResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorCountRequestResponse(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

