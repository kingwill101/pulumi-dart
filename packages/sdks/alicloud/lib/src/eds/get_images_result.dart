// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final String? desktopInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? imageType;
  final List<GetImagesImage> images;
  final String? nameRegex;
  final List<String> names;
  final String? osType;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetImagesResult].
  /// [desktopInstanceType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [imageType] Optional.
  /// [images] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [osType] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetImagesResult({
    this.desktopInstanceType,
    required this.id,
    required this.ids,
    this.imageType,
    required this.images,
    this.nameRegex,
    required this.names,
    this.osType,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopInstanceType': ?desktopInstanceType,
      'id': id,
      'ids': ids,
      'imageType': ?imageType,
      'images': pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      desktopInstanceType: map['desktopInstanceType'] == null ? null : map['desktopInstanceType']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageType: map['imageType'] == null ? null : map['imageType']! as String,
      images: pulumi.Input.decodeList<GetImagesImage>(map['images'], (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      osType: map['osType'] == null ? null : map['osType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

