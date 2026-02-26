// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in linked BuildDetails.
class BuildType {
  /// Version of the builder which produced this Note.
  final String? builderVersion;

  /// Signature of the build in Occurrences pointing to the Note containing this `BuilderDetails`.
  final BuildSignature? signature;

  BuildType({
    this.builderVersion,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderVersionValue = builderVersion;
    if (builderVersionValue != null) {
      map['builderVersion'] = builderVersionValue;
    }
    final signatureValue = signature;
    if (signatureValue != null) {
      map['signature'] = signatureValue.toMap();
    }
    return map;
  }

  factory BuildType.fromMap(Map<String, dynamic> map) {
    return BuildType(
      builderVersion: map['builderVersion'] == null
          ? null
          : map['builderVersion'] as String,
      signature: map['signature'] == null
          ? null
          : BuildSignature.fromMap(
              (map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}
