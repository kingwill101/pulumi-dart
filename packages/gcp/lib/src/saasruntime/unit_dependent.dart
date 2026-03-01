// ignore_for_file: unused_element, unnecessary_cast

class UnitDependent {
  /// (Output)
  /// Alias for the name of the dependency.
  final String? alias;

  /// (Output)
  /// A reference to the Unit object.
  final String? unit;

  /// Creates a new [UnitDependent].
  /// [alias] (Output)
  /// [unit] (Output)
  UnitDependent({this.alias, this.unit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alias': ?alias, 'unit': ?unit};
  }

  factory UnitDependent.fromMap(Map<String, dynamic> map) {
    return UnitDependent(
      alias: map['alias'] == null ? null : map['alias'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}
