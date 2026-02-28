// ignore_for_file: unused_element, unnecessary_cast

class UnitKindOutputVariableMappingFrom {
  /// Alias of the dependency that the outputVariable will pass its value to
  final String dependency;

  /// Name of the outputVariable on the dependency
  final String outputVariable;

  /// Creates a new [UnitKindOutputVariableMappingFrom].
  /// [dependency] Alias of the dependency that the outputVariable will pass its value to
  /// [outputVariable] Name of the outputVariable on the dependency
  UnitKindOutputVariableMappingFrom({
    required this.dependency,
    required this.outputVariable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dependency'] = dependency;
    map['outputVariable'] = outputVariable;
    return map;
  }

  factory UnitKindOutputVariableMappingFrom.fromMap(Map<String, dynamic> map) {
    return UnitKindOutputVariableMappingFrom(
      dependency: map['dependency'] as String,
      outputVariable: map['outputVariable'] as String,
    );
  }
}
