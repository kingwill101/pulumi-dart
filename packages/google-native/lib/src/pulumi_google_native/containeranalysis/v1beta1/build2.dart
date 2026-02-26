// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature2.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class Build2 {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;

  /// Signature of the build in occurrences pointing to this build note containing build details.
  final BuildSignature2? signature;

  Build2({
    required this.builderVersion,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    final signatureValue = signature;
    if (signatureValue != null) {
      map['signature'] = signatureValue.toMap();
    }
    return map;
  }

  factory Build2.fromMap(Map<String, dynamic> map) {
    return Build2(
      builderVersion: map['builderVersion'] as String,
      signature: map['signature'] == null
          ? null
          : BuildSignature2.fromMap(
              (map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}
