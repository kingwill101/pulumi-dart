// ignore_for_file: unused_element, unnecessary_cast

/// Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
class GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder {
  final String? id;

  GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
