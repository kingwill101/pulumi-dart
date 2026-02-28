// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bounding_poly_response.dart';

/// Image annotation.
class ImageAnnotationResponse {
  /// The list of polygons outlining the sensitive regions in the image.
  final List<BoundingPolyResponse> boundingPolys;

  /// 0-based index of the image frame. For example, an image frame in a DICOM instance.
  final int frameIndex;

  /// Creates a new [ImageAnnotationResponse].
  /// [boundingPolys] The list of polygons outlining the sensitive regions in the image.
  /// [frameIndex] 0-based index of the image frame. For example, an image frame in a DICOM instance.
  ImageAnnotationResponse({
    required this.boundingPolys,
    required this.frameIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boundingPolys'] =
        pulumi.Input.encodeList<BoundingPolyResponse, Map<String, dynamic>>(
            boundingPolys, (value) => value.toMap());
    map['frameIndex'] = frameIndex;
    return map;
  }

  factory ImageAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return ImageAnnotationResponse(
      boundingPolys: pulumi.Input.decodeList<BoundingPolyResponse>(
          map['boundingPolys'],
          (value) => BoundingPolyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      frameIndex: map['frameIndex'] as int,
    );
  }
}
