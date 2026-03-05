// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TotalLocalStorageGBRequest
class TotalLocalStorageGBRequestResponse {
  /// The storage maximum in GB.
  final pulumi.Input<int>? max;
  /// The storage minimum in GB.
  final pulumi.Input<int>? min;

  /// Creates a new [TotalLocalStorageGBRequestResponse].
  /// [max] The storage maximum in GB.
  /// [min] The storage minimum in GB.
  TotalLocalStorageGBRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory TotalLocalStorageGBRequestResponse.fromMap(Map<String, dynamic> map) {
    return TotalLocalStorageGBRequestResponse(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

