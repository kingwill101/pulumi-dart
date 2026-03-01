// ignore_for_file: unused_element, unnecessary_cast


/// Dimensions of a configuration.
class DimensionsResponse {
  /// Depth of the device.
  final double depth;
  /// Height of the device.
  final double height;
  /// Length of the device.
  final double length;
  /// Unit for the dimensions of length, height and width.
  final String lengthHeightUnit;
  /// Weight of the device.
  final double weight;
  /// Unit for the dimensions of weight.
  final String weightUnit;
  /// Width of the device.
  final double width;

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
      depth: map['depth'] as double,
      height: map['height'] as double,
      length: map['length'] as double,
      lengthHeightUnit: map['lengthHeightUnit'] as String,
      weight: map['weight'] as double,
      weightUnit: map['weightUnit'] as String,
      width: map['width'] as double,
    );
  }
}

