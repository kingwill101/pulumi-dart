// ignore_for_file: unused_element, unnecessary_cast

/// SlsaBuilder encapsulates the identity of the builder of this provenance.
class SlsaBuilderContaineranalysisV1alpha1 {
  /// id is the id of the slsa provenance builder
  final String? id;

  SlsaBuilderContaineranalysisV1alpha1({
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

  factory SlsaBuilderContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SlsaBuilderContaineranalysisV1alpha1(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
