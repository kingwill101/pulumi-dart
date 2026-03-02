// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dimensions of a configuration.
class DimensionsResponse {
  /// Depth of the device.
  final pulumi.Input<double> depth;
  /// Height of the device.
  final pulumi.Input<double> height;
  /// Length of the device.
  final pulumi.Input<double> length;
  /// Unit for the dimensions of length, height and width.
  final pulumi.Input<String> lengthHeightUnit;
  /// Weight of the device.
  final pulumi.Input<double> weight;
  /// Unit for the dimensions of weight.
  final pulumi.Input<String> weightUnit;
  /// Width of the device.
  final pulumi.Input<double> width;

  /// Creates a new [DimensionsResponse].
  /// [depth] Depth of the device.
  /// [height] Height of the device.
  /// [length] Length of the device.
  /// [lengthHeightUnit] Unit for the dimensions of length, height and width.
  /// [weight] Weight of the device.
  /// [weightUnit] Unit for the dimensions of weight.
  /// [width] Width of the device.
  DimensionsResponse({
    required this.depth,
    required this.height,
    required this.length,
    required this.lengthHeightUnit,
    required this.weight,
    required this.weightUnit,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'depth': depth,
      'height': height,
      'length': length,
      'lengthHeightUnit': lengthHeightUnit,
      'weight': weight,
      'weightUnit': weightUnit,
      'width': width,
    };
  }

  factory DimensionsResponse.fromMap(Map<String, dynamic> map) {
    return DimensionsResponse(
      depth: (map['depth'] as double).input(),
      height: (map['height'] as double).input(),
      length: (map['length'] as double).input(),
      lengthHeightUnit: (map['lengthHeightUnit'] as String).input(),
      weight: (map['weight'] as double).input(),
      weightUnit: (map['weightUnit'] as String).input(),
      width: (map['width'] as double).input(),
    );
  }
}

