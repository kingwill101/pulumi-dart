// ignore_for_file: unused_element, unnecessary_cast


/// An alias to a repo revision.
class AliasContextResponseContaineranalysisV1beta1 {
  /// The alias kind.
  final String kind;
  /// The alias name.
  final String name;

  /// Creates a new [AliasContextResponseContaineranalysisV1beta1].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContextResponseContaineranalysisV1beta1({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AliasContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AliasContextResponseContaineranalysisV1beta1(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

