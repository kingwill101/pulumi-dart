// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_processor_regions_of_interest_bounding_box/stream_processor_regions_of_interest_bounding_box.dart';
import '../stream_processor_regions_of_interest_polygon/stream_processor_regions_of_interest_polygon.dart';

class StreamProcessorRegionsOfInterest {
  /// Box representing a region of interest on screen. Only 1 per region is allowed. See <span pulumi-lang-nodejs="`boundingBox`" pulumi-lang-dotnet="`BoundingBox`" pulumi-lang-go="`boundingBox`" pulumi-lang-python="`bounding_box`" pulumi-lang-yaml="`boundingBox`" pulumi-lang-java="`boundingBox`">`bounding_box`</span>.
  final StreamProcessorRegionsOfInterestBoundingBox? boundingBox;

  /// Shape made up of up to 10 Point objects to define a region of interest. See <span pulumi-lang-nodejs="`polygon`" pulumi-lang-dotnet="`Polygon`" pulumi-lang-go="`polygon`" pulumi-lang-python="`polygon`" pulumi-lang-yaml="`polygon`" pulumi-lang-java="`polygon`">`polygon`</span>.
  final List<StreamProcessorRegionsOfInterestPolygon>? polygons;

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
      map['polygons'] = Input.encodeList<
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
          : Input.decodeList<StreamProcessorRegionsOfInterestPolygon>(
              map['polygons'],
              (value) => StreamProcessorRegionsOfInterestPolygon.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
