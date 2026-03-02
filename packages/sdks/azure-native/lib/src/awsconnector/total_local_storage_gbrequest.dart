// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TotalLocalStorageGBRequest
class TotalLocalStorageGBRequest {
  /// The storage maximum in GB.
  final pulumi.Input<int>? max;
  /// The storage minimum in GB.
  final pulumi.Input<int>? min;

  /// Creates a new [TotalLocalStorageGBRequest].
  /// [max] The storage maximum in GB.
  /// [min] The storage minimum in GB.
  TotalLocalStorageGBRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory TotalLocalStorageGBRequest.fromMap(Map<String, dynamic> map) {
    return TotalLocalStorageGBRequest(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

