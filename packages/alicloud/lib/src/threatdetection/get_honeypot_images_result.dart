// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_images_image.dart';

/// Result data returned by getHoneypotImages.
class GetHoneypotImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Honeypot Image IDs.
  final List<String> ids;
  /// A list of Honeypot Image Entries. Each element contains the following attributes:
  final List<GetHoneypotImagesImage> images;
  final String? nameRegex;
  /// A list of name of Honeypot Images.
  final List<String> names;
  final String? nodeId;
  final String? outputFile;

  /// Creates a new [GetHoneypotImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Honeypot Image IDs.
  /// [images] A list of Honeypot Image Entries. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of name of Honeypot Images.
  /// [nodeId] Optional.
  /// [outputFile] Optional.
  GetHoneypotImagesResult({
    required this.id,
    required this.ids,
    required this.images,
    this.nameRegex,
    required this.names,
    this.nodeId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'images': pulumi.Input.encodeList<GetHoneypotImagesImage, Map<String, dynamic>>(images, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'nodeId': ?nodeId,
      'outputFile': ?outputFile,
    };
  }

  factory GetHoneypotImagesResult.fromMap(Map<String, dynamic> map) {
    return GetHoneypotImagesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      images: pulumi.Input.decodeList<GetHoneypotImagesImage>(map['images'], (value) => GetHoneypotImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

