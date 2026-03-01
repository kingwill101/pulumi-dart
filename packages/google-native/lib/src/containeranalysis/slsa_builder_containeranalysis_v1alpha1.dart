// ignore_for_file: unused_element, unnecessary_cast

/// SlsaBuilder encapsulates the identity of the builder of this provenance.
class SlsaBuilderContaineranalysisV1alpha1 {
  /// id is the id of the slsa provenance builder
  final String? id;

  /// Creates a new [SlsaBuilderContaineranalysisV1alpha1].
  /// [id] id is the id of the slsa provenance builder
  SlsaBuilderContaineranalysisV1alpha1({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory SlsaBuilderContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaBuilderContaineranalysisV1alpha1(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
