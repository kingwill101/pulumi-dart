// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// While retrieving VMSizes from CRS, Min = 0 (uint.MinValue) if not specified, Max = 4294967295 (uint.MaxValue) if not specified. This allows to filter VMAttributes on all available VMSizes.
class VMAttributeMinMaxIntegerResponse {
  /// Max VMSize from CRS, Max = 4294967295 (uint.MaxValue) if not specified.
  final pulumi.Input<int>? max;
  /// Min VMSize from CRS, Min = 0 (uint.MinValue) if not specified.
  final pulumi.Input<int>? min;

  /// Creates a new [VMAttributeMinMaxIntegerResponse].
  /// [max] Max VMSize from CRS, Max = 4294967295 (uint.MaxValue) if not specified.
  /// [min] Min VMSize from CRS, Min = 0 (uint.MinValue) if not specified.
  VMAttributeMinMaxIntegerResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory VMAttributeMinMaxIntegerResponse.fromMap(Map<String, dynamic> map) {
    return VMAttributeMinMaxIntegerResponse(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

