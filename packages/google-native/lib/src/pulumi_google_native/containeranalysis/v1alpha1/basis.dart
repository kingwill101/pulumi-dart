// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint2.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class Basis {
  /// The fingerprint of the base image.
  final Fingerprint2? fingerprint;

  /// The resource_url for the resource representing the basis of associated occurrence images.
  final String? resourceUrl;

  Basis({
    this.fingerprint,
    this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fingerprintValue = fingerprint;
    if (fingerprintValue != null) {
      map['fingerprint'] = fingerprintValue.toMap();
    }
    final resourceUrlValue = resourceUrl;
    if (resourceUrlValue != null) {
      map['resourceUrl'] = resourceUrlValue;
    }
    return map;
  }

  factory Basis.fromMap(Map<String, dynamic> map) {
    return Basis(
      fingerprint: map['fingerprint'] == null
          ? null
          : Fingerprint2.fromMap(
              (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl:
          map['resourceUrl'] == null ? null : map['resourceUrl'] as String,
    );
  }
}
