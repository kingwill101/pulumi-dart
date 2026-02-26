// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGiVersions.
class GetGiVersionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The system shape.
  final Input<String>? shape;

  GetGiVersionsArgs({
    this.region,
    this.shape,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shapeValue = shape;
    if (shapeValue != null) {
      map['shape'] = shapeValue;
    }
    return map;
  }

  factory GetGiVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      shape: Input.asOptionalInput<String>(map['shape']),
    );
  }
}
