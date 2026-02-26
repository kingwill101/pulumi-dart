// ignore_for_file: unused_element, unnecessary_cast

/// An alias to a repo revision.
class AliasContextResponse2 {
  /// The alias kind.
  final String kind;

  /// The alias name.
  final String name;

  AliasContextResponse2({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory AliasContextResponse2.fromMap(Map<String, dynamic> map) {
    return AliasContextResponse2(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
