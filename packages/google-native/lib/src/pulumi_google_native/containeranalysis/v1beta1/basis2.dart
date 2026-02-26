// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint3.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class Basis2 {
  /// Immutable. The fingerprint of the base image.
  final Fingerprint3 fingerprint;

  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  Basis2({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    map['resourceUrl'] = resourceUrl;
    return map;
  }

  factory Basis2.fromMap(Map<String, dynamic> map) {
    return Basis2(
      fingerprint: Fingerprint3.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}
