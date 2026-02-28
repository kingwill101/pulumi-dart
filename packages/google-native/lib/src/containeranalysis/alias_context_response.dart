// ignore_for_file: unused_element, unnecessary_cast

/// An alias to a repo revision.
class AliasContextResponse {
  /// The alias kind.
  final String kind;

  /// The alias name.
  final String name;

  /// Creates a new [AliasContextResponse].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContextResponse({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory AliasContextResponse.fromMap(Map<String, dynamic> map) {
    return AliasContextResponse(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
