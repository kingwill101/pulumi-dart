// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_images_image/get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetImagesImage> images;
  final String? project;

  GetImagesResult({
    this.filter,
    required this.id,
    required this.images,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['images'] = Input.encodeList<GetImagesImage, Map<String, dynamic>>(
        images, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      images: Input.decodeList<GetImagesImage>(
          map['images'],
          (value) =>
              GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
