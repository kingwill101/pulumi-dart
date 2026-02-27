// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_id_response.dart';

/// Describes a set of X.509 extensions that may be part of some certificate issuance controls.
class CertificateExtensionConstraintsResponse {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  final List<ObjectIdResponse> additionalExtensions;

  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final List<String> knownExtensions;

  CertificateExtensionConstraintsResponse({
    required this.additionalExtensions,
    required this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalExtensions'] =
        pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(
            additionalExtensions, (value) => value.toMap());
    map['knownExtensions'] = knownExtensions;
    return map;
  }

  factory CertificateExtensionConstraintsResponse.fromMap(
      Map<String, dynamic> map) {
    return CertificateExtensionConstraintsResponse(
      additionalExtensions: pulumi.Input.decodeList<ObjectIdResponse>(
          map['additionalExtensions'],
          (value) =>
              ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      knownExtensions: (map['knownExtensions'] as List).cast<String>(),
    );
  }
}
