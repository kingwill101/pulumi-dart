// ignore_for_file: unused_element, unnecessary_cast


/// System generated entities.
class PredictionResponseSystemGeneratedEntities {
  /// Generated interaction types.
  final List<String>? generatedInteractionTypes;
  /// Generated KPIs.
  final Map<String, String>? generatedKpis;
  /// Generated links.
  final List<String>? generatedLinks;

  /// Creates a new [PredictionResponseSystemGeneratedEntities].
  /// [generatedInteractionTypes] Generated interaction types.
  /// [generatedKpis] Generated KPIs.
  /// [generatedLinks] Generated links.
  PredictionResponseSystemGeneratedEntities({
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
      generatedInteractionTypes: map['generatedInteractionTypes'] == null ? null : (map['generatedInteractionTypes'] as List).cast<String>(),
      generatedKpis: map['generatedKpis'] == null ? null : (map['generatedKpis'] as Map).cast<String, String>(),
      generatedLinks: map['generatedLinks'] == null ? null : (map['generatedLinks'] as List).cast<String>(),
    );
  }
}

