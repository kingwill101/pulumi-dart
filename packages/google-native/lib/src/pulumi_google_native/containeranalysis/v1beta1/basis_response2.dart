// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint_response3.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class BasisResponse2 {
  /// Immutable. The fingerprint of the base image.
  final FingerprintResponse3 fingerprint;

  /// Immutable. The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  BasisResponse2({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    map['resourceUrl'] = resourceUrl;
    return map;
  }

  factory BasisResponse2.fromMap(Map<String, dynamic> map) {
    return BasisResponse2(
      fingerprint: FingerprintResponse3.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}
