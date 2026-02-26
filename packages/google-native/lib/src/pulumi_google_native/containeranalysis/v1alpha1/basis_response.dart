// ignore_for_file: unused_element, unnecessary_cast

import 'fingerprint_response2.dart';

/// Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g. a tag of the resource_url.
class BasisResponse {
  /// The fingerprint of the base image.
  final FingerprintResponse2 fingerprint;

  /// The resource_url for the resource representing the basis of associated occurrence images.
  final String resourceUrl;

  BasisResponse({
    required this.fingerprint,
    required this.resourceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    map['resourceUrl'] = resourceUrl;
    return map;
  }

  factory BasisResponse.fromMap(Map<String, dynamic> map) {
    return BasisResponse(
      fingerprint: FingerprintResponse2.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
    );
  }
}
