// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image reference information
class ImageReferenceResponse {
  /// The actual version of the image after use. When id references a gallery image latest version, this will indicate the actual version in use.
  final pulumi.Input<String> exactVersion;
  /// Image ID, or Image version ID. When Image ID is provided, its latest version will be used.
  final pulumi.Input<String>? id;

  /// Creates a new [ImageReferenceResponse].
  /// [exactVersion] The actual version of the image after use. When id references a gallery image latest version, this will indicate the actual version in use.
  /// [id] Image ID, or Image version ID. When Image ID is provided, its latest version will be used.
  ImageReferenceResponse({
    required this.exactVersion,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'id': ?id,
    };
  }

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      exactVersion: (map['exactVersion'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

