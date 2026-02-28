// ignore_for_file: unused_element, unnecessary_cast

class UnitKindDependency {
  /// An alias for the dependency. Used for input variable mapping.
  final String alias;

  /// The unit kind of the dependency.
  final String unitKind;

  /// Creates a new [UnitKindDependency].
  /// [alias] An alias for the dependency. Used for input variable mapping.
  /// [unitKind] The unit kind of the dependency.
  UnitKindDependency({
    required this.alias,
    required this.unitKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['unitKind'] = unitKind;
    return map;
  }

  factory UnitKindDependency.fromMap(Map<String, dynamic> map) {
    return UnitKindDependency(
      alias: map['alias'] as String,
      unitKind: map['unitKind'] as String,
    );
  }
}
