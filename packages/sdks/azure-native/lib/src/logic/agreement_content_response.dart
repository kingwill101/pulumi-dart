// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_agreement_content_response.dart';
import 'edifact_agreement_content_response.dart';
import 'x12_agreement_content_response.dart';

/// The integration account agreement content.
class AgreementContentResponse {
  /// The AS2 agreement content.
  final pulumi.Input<AS2AgreementContentResponse>? aS2;
  /// The EDIFACT agreement content.
  final pulumi.Input<EdifactAgreementContentResponse>? edifact;
  /// The X12 agreement content.
  final pulumi.Input<X12AgreementContentResponse>? x12;

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
      'aS2': ?pulumi.Input.mapOptionalInputValue<AS2AgreementContentResponse, Map<String, dynamic>>(aS2, (value) => value.toMap()),
      'edifact': ?pulumi.Input.mapOptionalInputValue<EdifactAgreementContentResponse, Map<String, dynamic>>(edifact, (value) => value.toMap()),
      'x12': ?pulumi.Input.mapOptionalInputValue<X12AgreementContentResponse, Map<String, dynamic>>(x12, (value) => value.toMap()),
    };
  }

  factory AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return AgreementContentResponse(
      aS2: map['aS2'] == null ? null : (AS2AgreementContentResponse.fromMap((map['aS2'] as Map).cast<String, dynamic>())).input(),
      edifact: map['edifact'] == null ? null : (EdifactAgreementContentResponse.fromMap((map['edifact'] as Map).cast<String, dynamic>())).input(),
      x12: map['x12'] == null ? null : (X12AgreementContentResponse.fromMap((map['x12'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

