// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in linked BuildDetails.
class BuildType {
  /// Version of the builder which produced this Note.
  final String? builderVersion;
  /// Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  final BuildSignature? signature;

  /// Creates a new [BuildType].
  /// [builderVersion] Version of the builder which produced this Note.
  /// [signature] Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  BuildType({
    this.builderVersion,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': ?builderVersion,
      'signature': ?signature == null ? null : signature!.toMap(),
    };
  }

  factory BuildType.fromMap(Map<String, dynamic> map) {
    return BuildType(
      builderVersion: map['builderVersion'] == null ? null : map['builderVersion'] as String,
      signature: map['signature'] == null ? null : BuildSignature.fromMap((map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}

