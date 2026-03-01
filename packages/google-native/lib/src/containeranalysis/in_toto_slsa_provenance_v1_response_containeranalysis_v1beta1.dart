// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_response_containeranalysis_v1beta1.dart';
import 'subject_response_containeranalysis_v1beta1.dart';

class InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1 {
  final SlsaProvenanceV1ResponseContaineranalysisV1beta1 predicate;
  final String predicateType;
  final List<SubjectResponseContaineranalysisV1beta1> subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String type;

  /// Creates a new [InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1].
  /// [predicate] Required.
  /// [predicateType] Required.
  /// [subject] Required.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': predicate.toMap(),
      'predicateType': predicateType,
      'subject':
          pulumi.Input.encodeList<
            SubjectResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(subject, (value) => value.toMap()),
      'type': type,
    };
  }

  factory InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1(
      predicate: SlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap(
        (map['predicate'] as Map).cast<String, dynamic>(),
      ),
      predicateType: map['predicateType'] as String,
      subject: pulumi.Input.decodeList<SubjectResponseContaineranalysisV1beta1>(
        map['subject'],
        (value) => SubjectResponseContaineranalysisV1beta1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] as String,
    );
  }
}
