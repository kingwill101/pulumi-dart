// ignore_for_file: unused_element, unnecessary_cast

import 'as2_agreement_content_response.dart';
import 'edifact_agreement_content_response.dart';
import 'x12_agreement_content_response.dart';

/// The integration account agreement content.
class AgreementContentResponse {
  /// The AS2 agreement content.
  final AS2AgreementContentResponse? aS2;
  /// The EDIFACT agreement content.
  final EdifactAgreementContentResponse? edifact;
  /// The X12 agreement content.
  final X12AgreementContentResponse? x12;

  /// Creates a new [AgreementContentResponse].
  /// [aS2] The AS2 agreement content.
  /// [edifact] The EDIFACT agreement content.
  /// [x12] The X12 agreement content.
  AgreementContentResponse({
    this.aS2,
    this.edifact,
    this.x12,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aS2': ?aS2 == null ? null : aS2!.toMap(),
      'edifact': ?edifact == null ? null : edifact!.toMap(),
      'x12': ?x12 == null ? null : x12!.toMap(),
    };
  }

  factory AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return AgreementContentResponse(
      aS2: map['aS2'] == null ? null : AS2AgreementContentResponse.fromMap((map['aS2'] as Map).cast<String, dynamic>()),
      edifact: map['edifact'] == null ? null : EdifactAgreementContentResponse.fromMap((map['edifact'] as Map).cast<String, dynamic>()),
      x12: map['x12'] == null ? null : X12AgreementContentResponse.fromMap((map['x12'] as Map).cast<String, dynamic>()),
    );
  }
}

