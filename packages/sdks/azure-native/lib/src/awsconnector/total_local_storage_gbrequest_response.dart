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
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

