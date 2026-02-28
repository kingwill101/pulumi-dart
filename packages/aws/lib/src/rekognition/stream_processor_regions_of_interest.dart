// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_regions_of_interest_bounding_box.dart';
import 'stream_processor_regions_of_interest_polygon.dart';

class StreamProcessorRegionsOfInterest {
  /// Box representing a region of interest on screen. Only 1 per region is allowed. See `bounding_box`.
  final StreamProcessorRegionsOfInterestBoundingBox? boundingBox;

  /// Shape made up of up to 10 Point objects to define a region of interest. See `polygon`.
  final List<StreamProcessorRegionsOfInterestPolygon>? polygons;

  /// Creates a new [StreamProcessorRegionsOfInterest].
  /// [boundingBox] Box representing a region of interest on screen. Only 1 per region is allowed. See `bounding_box`.
  /// [polygons] Shape made up of up to 10 Point objects to define a region of interest. See `polygon`.
  StreamProcessorRegionsOfInterest({
    this.boundingBox,
    this.polygons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boundingBoxValue = boundingBox;
    if (boundingBoxValue != null) {
      map['boundingBox'] = boundingBoxValue.toMap();
    }
    final polygonsValue = polygons;
    if (polygonsValue != null) {
      map['polygons'] = pulumi.Input.encodeList<
          StreamProcessorRegionsOfInterestPolygon,
          Map<String, dynamic>>(polygonsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamProcessorRegionsOfInterest.fromMap(Map<String, dynamic> map) {
    return StreamProcessorRegionsOfInterest(
      boundingBox: map['boundingBox'] == null
          ? null
          : StreamProcessorRegionsOfInterestBoundingBox.fromMap(
              (map['boundingBox'] as Map).cast<String, dynamic>()),
      polygons: map['polygons'] == null
          ? null
          : pulumi.Input.decodeList<StreamProcessorRegionsOfInterestPolygon>(
              map['polygons'],
              (value) => StreamProcessorRegionsOfInterestPolygon.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
