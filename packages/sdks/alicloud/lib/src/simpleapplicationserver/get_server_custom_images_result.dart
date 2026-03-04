// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_custom_images_image.dart';

/// Result data returned by getServerCustomImages.
class GetServerCustomImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetServerCustomImagesImage> images;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetServerCustomImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [images] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetServerCustomImagesResult({
    required this.id,
    required this.ids,
    required this.images,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'images':
          pulumi.Input.encodeList<
            GetServerCustomImagesImage,
            Map<String, dynamic>
          >(images, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerCustomImagesResult.fromMap(Map<String, dynamic> map) {
    return GetServerCustomImagesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      images: pulumi.Input.decodeList<GetServerCustomImagesImage>(
        map['images']!,
        (value) => GetServerCustomImagesImage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
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
    );
  }
}
