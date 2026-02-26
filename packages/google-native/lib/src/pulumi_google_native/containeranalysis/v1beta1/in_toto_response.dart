// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'artifact_rule_response.dart';
import 'signing_key_response.dart';

/// This contains the fields corresponding to the definition of a software supply chain step in an in-toto layout. This information goes into a Grafeas note.
class InTotoResponse {
  /// This field contains the expected command used to perform the step.
  final List<String> expectedCommand;

  /// The following fields contain in-toto artifact rules identifying the artifacts that enter this supply chain step, and exit the supply chain step, i.e. materials and products of the step.
  final List<ArtifactRuleResponse> expectedMaterials;
  final List<ArtifactRuleResponse> expectedProducts;

  /// This field contains the public keys that can be used to verify the signatures on the step metadata.
  final List<SigningKeyResponse> signingKeys;

  /// This field identifies the name of the step in the supply chain.
  final String stepName;

  /// This field contains a value that indicates the minimum number of keys that need to be used to sign the step's in-toto link.
  final String threshold;

  InTotoResponse({
    required this.expectedCommand,
    required this.expectedMaterials,
    required this.expectedProducts,
    required this.signingKeys,
    required this.stepName,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expectedCommand'] = expectedCommand;
    map['expectedMaterials'] =
        Input.encodeList<ArtifactRuleResponse, Map<String, dynamic>>(
            expectedMaterials, (value) => value.toMap());
    map['expectedProducts'] =
        Input.encodeList<ArtifactRuleResponse, Map<String, dynamic>>(
            expectedProducts, (value) => value.toMap());
    map['signingKeys'] =
        Input.encodeList<SigningKeyResponse, Map<String, dynamic>>(
            signingKeys, (value) => value.toMap());
    map['stepName'] = stepName;
    map['threshold'] = threshold;
    return map;
  }

  factory InTotoResponse.fromMap(Map<String, dynamic> map) {
    return InTotoResponse(
      expectedCommand: (map['expectedCommand'] as List).cast<String>(),
      expectedMaterials: Input.decodeList<ArtifactRuleResponse>(
          map['expectedMaterials'],
          (value) => ArtifactRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      expectedProducts: Input.decodeList<ArtifactRuleResponse>(
          map['expectedProducts'],
          (value) => ArtifactRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      signingKeys: Input.decodeList<SigningKeyResponse>(
          map['signingKeys'],
          (value) => SigningKeyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      stepName: map['stepName'] as String,
      threshold: map['threshold'] as String,
    );
  }
}
