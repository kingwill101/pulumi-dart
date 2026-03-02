// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_regions_of_interest_bounding_box.dart';
import 'stream_processor_regions_of_interest_polygon.dart';

class StreamProcessorRegionsOfInterest {
  /// Box representing a region of interest on screen. Only 1 per region is allowed. See `bounding_box`.
  final pulumi.Input<StreamProcessorRegionsOfInterestBoundingBox>? boundingBox;
  /// Shape made up of up to 10 Point objects to define a region of interest. See `polygon`.
  final pulumi.Input<List<StreamProcessorRegionsOfInterestPolygon>>? polygons;

  /// Creates a new [StreamProcessorRegionsOfInterest].
  /// [boundingBox] Box representing a region of interest on screen. Only 1 per region is allowed. See `bounding_box`.
  /// [polygons] Shape made up of up to 10 Point objects to define a region of interest. See `polygon`.
  StreamProcessorRegionsOfInterest({
    this.boundingBox,
    this.polygons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBox': ?pulumi.Input.mapOptionalInputValue<StreamProcessorRegionsOfInterestBoundingBox, Map<String, dynamic>>(boundingBox, (value) => value.toMap()),
      'polygons': ?pulumi.Input.mapOptionalInputValue<List<StreamProcessorRegionsOfInterestPolygon>, List<Map<String, dynamic>>>(polygons, (value) => pulumi.Input.encodeList<StreamProcessorRegionsOfInterestPolygon, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamProcessorRegionsOfInterest.fromMap(Map<String, dynamic> map) {
    return StreamProcessorRegionsOfInterest(
      boundingBox: map['boundingBox'] == null ? null : (StreamProcessorRegionsOfInterestBoundingBox.fromMap((map['boundingBox'] as Map).cast<String, dynamic>())).input(),
      polygons: map['polygons'] == null ? null : (pulumi.Input.decodeList<StreamProcessorRegionsOfInterestPolygon>(map['polygons'], (value) => StreamProcessorRegionsOfInterestPolygon.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

