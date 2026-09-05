// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorRegionsOfInterestBoundingBox {
  /// Height of the bounding box as a ratio of the overall image height.
  final pulumi.Input<double?>? height;
  /// Left coordinate of the bounding box as a ratio of overall image width.
  final pulumi.Input<double?>? left;
  /// Top coordinate of the bounding box as a ratio of overall image height.
  final pulumi.Input<double?>? top;
  /// Width of the bounding box as a ratio of the overall image width.
  final pulumi.Input<double?>? width;

  /// Creates a new [StreamProcessorRegionsOfInterestBoundingBox].
  /// [height] Height of the bounding box as a ratio of the overall image height.
  /// [left] Left coordinate of the bounding box as a ratio of overall image width.
  /// [top] Top coordinate of the bounding box as a ratio of overall image height.
  /// [width] Width of the bounding box as a ratio of the overall image width.
  const StreamProcessorRegionsOfInterestBoundingBox({
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

  factory StreamProcessorRegionsOfInterestBoundingBox.fromMap(Map<String, dynamic> map) {
    return StreamProcessorRegionsOfInterestBoundingBox(
      height: (() { final guardedValue = map['height']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      left: (() { final guardedValue = map['left']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      width: (() { final guardedValue = map['width']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
