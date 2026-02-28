// ignore_for_file: unused_element, unnecessary_cast


/// Indicates that the builder claims certain fields in this message to be complete.
class GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse {
  final bool environment;
  final bool materials;
  final bool parameters;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse].
  /// [environment] Required.
  /// [materials] Required.
  /// [parameters] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse({
    required this.environment,
    required this.materials,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'materials': materials,
      'parameters': parameters,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaCompletenessResponse(
      environment: map['environment'] as bool,
      materials: map['materials'] as bool,
      parameters: map['parameters'] as bool,
    );
  }
}

