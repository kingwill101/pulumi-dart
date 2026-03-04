// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? imageType;
  final List<GetImagesImage> images;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? platform;

  /// Creates a new [GetImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [imageType] Optional.
  /// [images] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [platform] Optional.
  GetImagesResult({
    required this.id,
    required this.ids,
    this.imageType,
    required this.images,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'imageType': ?imageType,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(
        images,
        (value) => value.toMap(),
      ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'platform': ?platform,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageType: (() {
        final guardedValue = map['imageType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      images: pulumi.Input.decodeList<GetImagesImage>(
        map['images']!,
        (value) =>
            GetImagesImage.fromMap((value as Map).cast<String, dynamic>()),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
