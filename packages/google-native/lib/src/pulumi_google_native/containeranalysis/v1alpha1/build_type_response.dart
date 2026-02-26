// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_response.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in linked BuildDetails.
class BuildTypeResponse {
  /// Version of the builder which produced this Note.
  final String builderVersion;

  /// Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  final BuildSignatureResponse signature;

  BuildTypeResponse({
    required this.builderVersion,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    map['signature'] = signature.toMap();
    return map;
  }

  factory BuildTypeResponse.fromMap(Map<String, dynamic> map) {
    return BuildTypeResponse(
      builderVersion: map['builderVersion'] as String,
      signature: BuildSignatureResponse.fromMap(
          (map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}
