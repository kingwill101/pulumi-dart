// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.
class ImageNote {
  /// Immutable. The fingerprint of the base image.
  final Fingerprint fingerprint;

  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  /// Creates a new [ImageNote].
  /// [fingerprint] Immutable. The fingerprint of the base image.
  /// [resourceUrl] Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  ImageNote({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    map['resourceUrl'] = resourceUrl;
    return map;
  }

  factory ImageNote.fromMap(Map<String, dynamic> map) {
    return ImageNote(
      fingerprint: Fingerprint.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}
