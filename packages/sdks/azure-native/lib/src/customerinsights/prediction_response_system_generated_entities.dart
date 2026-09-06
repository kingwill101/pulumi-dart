// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// System generated entities.
class PredictionResponseSystemGeneratedEntities {
  /// Generated interaction types.
  final pulumi.Input<List<String>?>? generatedInteractionTypes;
  /// Generated KPIs.
  final pulumi.Input<Map<String, String>?>? generatedKpis;
  /// Generated links.
  final pulumi.Input<List<String>?>? generatedLinks;

  /// Creates a new [PredictionResponseSystemGeneratedEntities].
  /// [generatedInteractionTypes] Generated interaction types.
  /// [generatedKpis] Generated KPIs.
  /// [generatedLinks] Generated links.
  const PredictionResponseSystemGeneratedEntities({
    this.generatedInteractionTypes,
    this.generatedKpis,
    this.generatedLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generatedInteractionTypes': ?generatedInteractionTypes,
      'generatedKpis': ?generatedKpis,
      'generatedLinks': ?generatedLinks,
    };
  }

  factory PredictionResponseSystemGeneratedEntities.fromMap(Map<String, dynamic> map) {
    return PredictionResponseSystemGeneratedEntities(
      generatedInteractionTypes: (() { final guardedValue = map['generatedInteractionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      generatedKpis: (() { final guardedValue = map['generatedKpis']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      generatedLinks: (() { final guardedValue = map['generatedLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
