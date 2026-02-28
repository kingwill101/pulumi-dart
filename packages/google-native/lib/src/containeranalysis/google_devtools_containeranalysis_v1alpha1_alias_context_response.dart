// ignore_for_file: unused_element, unnecessary_cast

/// An alias to a repo revision.
class GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse {
  /// The alias kind.
  final String kind;

  /// The alias name.
  final String name;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse].
  /// [kind] The alias kind.
  /// [name] The alias name.
  GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
