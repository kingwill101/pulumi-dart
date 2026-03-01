// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorRegionsOfInterestBoundingBox {
  /// Height of the bounding box as a ratio of the overall image height.
  final double? height;

  /// Left coordinate of the bounding box as a ratio of overall image width.
  final double? left;

  /// Top coordinate of the bounding box as a ratio of overall image height.
  final double? top;

  /// Width of the bounding box as a ratio of the overall image width.
  final double? width;

  /// Creates a new [StreamProcessorRegionsOfInterestBoundingBox].
  /// [height] Height of the bounding box as a ratio of the overall image height.
  /// [left] Left coordinate of the bounding box as a ratio of overall image width.
  /// [top] Top coordinate of the bounding box as a ratio of overall image height.
  /// [width] Width of the bounding box as a ratio of the overall image width.
  StreamProcessorRegionsOfInterestBoundingBox({
    this.height,
    this.left,
    this.top,
    this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': ?height,
      'left': ?left,
      'top': ?top,
      'width': ?width,
    };
  }

  factory StreamProcessorRegionsOfInterestBoundingBox.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamProcessorRegionsOfInterestBoundingBox(
      height: map['height'] == null ? null : map['height'] as double,
      left: map['left'] == null ? null : map['left'] as double,
      top: map['top'] == null ? null : map['top'] as double,
      width: map['width'] == null ? null : map['width'] as double,
    );
  }
}
