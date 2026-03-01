// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_response.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in linked BuildDetails.
class BuildTypeResponse {
  /// Version of the builder which produced this Note.
  final String builderVersion;

  /// Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  final BuildSignatureResponse signature;

  /// Creates a new [BuildTypeResponse].
  /// [builderVersion] Version of the builder which produced this Note.
  /// [signature] Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  BuildTypeResponse({required this.builderVersion, required this.signature});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature': signature.toMap(),
    };
  }

  factory BuildTypeResponse.fromMap(Map<String, dynamic> map) {
    return BuildTypeResponse(
      builderVersion: map['builderVersion'] as String,
      signature: BuildSignatureResponse.fromMap(
        (map['signature'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
