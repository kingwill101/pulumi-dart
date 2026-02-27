// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bounding_poly2.dart';

/// The set of arguments for ReferenceImage.
class ReferenceImageArgs {
  /// Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  final Input<List<BoundingPoly2>>? boundingPolys;
  final Input<String>? location;

  /// The resource name of the reference image. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`. This field is ignored when creating a reference image.
  final Input<String>? name;
  final Input<String> productId;
  final Input<String>? project;

  /// A user-supplied resource id for the ReferenceImage to be added. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final Input<String>? referenceImageId;

  /// The Google Cloud Storage URI of the reference image. The URI must start with `gs://`.
  final Input<String> uri;

  ReferenceImageArgs({
    this.boundingPolys,
    this.location,
    this.name,
    required this.productId,
    this.project,
    this.referenceImageId,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boundingPolysValue = boundingPolys;
    if (boundingPolysValue != null) {
      map['boundingPolys'] = Input.mapOptionalInputValue<List<BoundingPoly2>,
              List<Map<String, dynamic>>>(
          boundingPolysValue,
          (value) => Input.encodeList<BoundingPoly2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final referenceImageIdValue = referenceImageId;
    if (referenceImageIdValue != null) {
      map['referenceImageId'] = referenceImageIdValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory ReferenceImageArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceImageArgs(
      boundingPolys:
          Input.asOptionalInput<List<BoundingPoly2>>(map['boundingPolys']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      referenceImageId: Input.asOptionalInput<String>(map['referenceImageId']),
      uri: Input.asInput<String>(map['uri']),
    );
  }
}
