// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_agreement_content.dart';
import 'edifact_agreement_content.dart';
import 'x12_agreement_content.dart';

/// The integration account agreement content.
class AgreementContent {
  /// The AS2 agreement content.
  final pulumi.Input<AS2AgreementContent>? aS2;
  /// The EDIFACT agreement content.
  final pulumi.Input<EdifactAgreementContent>? edifact;
  /// The X12 agreement content.
  final pulumi.Input<X12AgreementContent>? x12;

  /// Creates a new [AgreementContent].
  /// [aS2] The AS2 agreement content.
  /// [edifact] The EDIFACT agreement content.
  /// [x12] The X12 agreement content.
  const AgreementContent({
    this.aS2,
    this.edifact,
    this.x12,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aS2': ?pulumi.Input.mapOptionalInputValue<AS2AgreementContent, Map<String, dynamic>>(aS2, (value) => value.toMap()),
      'edifact': ?pulumi.Input.mapOptionalInputValue<EdifactAgreementContent, Map<String, dynamic>>(edifact, (value) => value.toMap()),
      'x12': ?pulumi.Input.mapOptionalInputValue<X12AgreementContent, Map<String, dynamic>>(x12, (value) => value.toMap()),
    };
  }

  factory AgreementContent.fromMap(Map<String, dynamic> map) {
    return AgreementContent(
      aS2: (() { final guardedValue = map['aS2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AS2AgreementContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      edifact: (() { final guardedValue = map['edifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdifactAgreementContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x12: (() { final guardedValue = map['x12']; if (guardedValue == null) return null; return pulumi.Input.fromValue(X12AgreementContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

