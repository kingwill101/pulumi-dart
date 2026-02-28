// ignore_for_file: unused_element, unnecessary_cast

import 'build_signature_response_containeranalysis_v1beta1.dart';

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildResponse {
  /// Immutable. Version of the builder which produced this build.
  final String builderVersion;
  /// Signature of the build in occurrences pointing to this build note containing build details.
  final BuildSignatureResponseContaineranalysisV1beta1 signature;

  /// Creates a new [BuildResponse].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  /// [signature] Signature of the build in occurrences pointing to this build note containing build details.
  BuildResponse({
    required this.builderVersion,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
      'signature': signature.toMap(),
    };
  }

  factory BuildResponse.fromMap(Map<String, dynamic> map) {
    return BuildResponse(
      builderVersion: map['builderVersion'] as String,
      signature: BuildSignatureResponseContaineranalysisV1beta1.fromMap((map['signature'] as Map).cast<String, dynamic>()),
    );
  }
}

