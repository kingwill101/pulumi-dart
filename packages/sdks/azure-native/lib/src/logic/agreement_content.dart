// ignore_for_file: unused_element, unnecessary_cast

import 'as2_agreement_content.dart';
import 'edifact_agreement_content.dart';
import 'x12_agreement_content.dart';

/// The integration account agreement content.
class AgreementContent {
  /// The AS2 agreement content.
  final AS2AgreementContent? aS2;
  /// The EDIFACT agreement content.
  final EdifactAgreementContent? edifact;
  /// The X12 agreement content.
  final X12AgreementContent? x12;

  /// Creates a new [AgreementContent].
  /// [aS2] The AS2 agreement content.
  /// [edifact] The EDIFACT agreement content.
  /// [x12] The X12 agreement content.
  AgreementContent({
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

  factory AgreementContent.fromMap(Map<String, dynamic> map) {
    return AgreementContent(
      aS2: map['aS2'] == null ? null : AS2AgreementContent.fromMap((map['aS2'] as Map).cast<String, dynamic>()),
      edifact: map['edifact'] == null ? null : EdifactAgreementContent.fromMap((map['edifact'] as Map).cast<String, dynamic>()),
      x12: map['x12'] == null ? null : X12AgreementContent.fromMap((map['x12'] as Map).cast<String, dynamic>()),
    );
  }
}

