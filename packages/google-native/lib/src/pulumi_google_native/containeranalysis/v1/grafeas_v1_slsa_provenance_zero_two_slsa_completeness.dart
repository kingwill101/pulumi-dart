// ignore_for_file: unused_element, unnecessary_cast

/// Indicates that the builder claims certain fields in this message to be complete.
class GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness {
  final bool? environment;
  final bool? materials;
  final bool? parameters;

  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness({
    this.environment,
    this.materials,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] = materialsValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    return map;
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(
      environment:
          map['environment'] == null ? null : map['environment'] as bool,
      materials: map['materials'] == null ? null : map['materials'] as bool,
      parameters: map['parameters'] == null ? null : map['parameters'] as bool,
    );
  }
}
