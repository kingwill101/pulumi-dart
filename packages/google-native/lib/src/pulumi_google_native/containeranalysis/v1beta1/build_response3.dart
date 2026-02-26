// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_response2.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildResponse3 {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;

  /// Signature of the build in occurrences pointing to this build note containing build details.
  final BuildSignatureResponse2 signature;

  BuildResponse3({
    required this.builderVersion,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    map['signature'] = signature.toMap();
    return map;
  }

  factory BuildResponse3.fromMap(Map<String, dynamic> map) {
    return BuildResponse3(
      builderVersion: map['builderVersion'] as String,
      signature: BuildSignatureResponse2.fromMap(
          (map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}
