// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_filter.dart';
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final List<GetImagesFilter>? filters;
  /// The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  final String id;
  final List<GetImagesImage> images;
  final bool? latest;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetImagesResult].
  /// [filters] Optional.
  /// [id] The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  /// [images] Required.
  /// [latest] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetImagesResult({
    this.filters,
    required this.id,
    required this.images,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetImagesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetImagesFilter>(map['filters'], (value) => GetImagesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images'], (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      latest: map['latest'] == null ? null : map['latest'] as bool,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

