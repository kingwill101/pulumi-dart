// ignore_for_file: unused_element, unnecessary_cast

/// An alias to a repo revision.
class AliasContextResponseContaineranalysisV1beta1 {
  /// The alias kind.
  final String kind;

  /// The alias name.
  final String name;

  AliasContextResponseContaineranalysisV1beta1({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory AliasContextResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AliasContextResponseContaineranalysisV1beta1(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
