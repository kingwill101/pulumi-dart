// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint_response.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.
class ImageNoteResponse {
  /// Immutable. The fingerprint of the base image.
  final FingerprintResponse fingerprint;

  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  /// Creates a new [ImageNoteResponse].
  /// [fingerprint] Immutable. The fingerprint of the base image.
  /// [resourceUrl] Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  ImageNoteResponse({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    map['resourceUrl'] = resourceUrl;
    return map;
  }

  factory ImageNoteResponse.fromMap(Map<String, dynamic> map) {
    return ImageNoteResponse(
      fingerprint: FingerprintResponse.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}
