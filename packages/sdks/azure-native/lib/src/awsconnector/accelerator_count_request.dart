// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AcceleratorCountRequest
class AcceleratorCountRequest {
  /// The maximum value.
  final pulumi.Input<int>? max;
  /// The minimum value.
  final pulumi.Input<int>? min;

  /// Creates a new [AcceleratorCountRequest].
  /// [max] The maximum value.
  /// [min] The minimum value.
  const AcceleratorCountRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory AcceleratorCountRequest.fromMap(Map<String, dynamic> map) {
    return AcceleratorCountRequest(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
