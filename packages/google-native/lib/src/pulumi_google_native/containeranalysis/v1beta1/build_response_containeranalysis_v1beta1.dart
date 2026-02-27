// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_response_containeranalysis_v1beta1.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildResponseContaineranalysisV1beta1 {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;

  /// Signature of the build in occurrences pointing to this build note containing build details.
  final BuildSignatureResponseContaineranalysisV1beta1 signature;

  BuildResponseContaineranalysisV1beta1({
    required this.builderVersion,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderVersion'] = builderVersion;
    map['signature'] = signature.toMap();
    return map;
  }

  factory BuildResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildResponseContaineranalysisV1beta1(
      builderVersion: map['builderVersion'] as String,
      signature: BuildSignatureResponseContaineranalysisV1beta1.fromMap(
          (map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}
