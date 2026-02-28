// ignore_for_file: unused_element, unnecessary_cast

class UnitDependency {
  /// (Output)
  /// Alias for the name of the dependency.
  final String? alias;

  /// (Output)
  /// A reference to the Unit object.
  final String? unit;

  /// Creates a new [UnitDependency].
  /// [alias] (Output)
  /// [unit] (Output)
  UnitDependency({
    this.alias,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory UnitDependency.fromMap(Map<String, dynamic> map) {
    return UnitDependency(
      alias: map['alias'] == null ? null : map['alias'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}
