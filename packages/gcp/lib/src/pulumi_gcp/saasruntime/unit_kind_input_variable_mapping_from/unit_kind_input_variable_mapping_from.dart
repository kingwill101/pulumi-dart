// ignore_for_file: unused_element, unnecessary_cast

class UnitKindInputVariableMappingFrom {
  /// Alias of the dependency that the outputVariable will pass its value to
  final String dependency;

  /// Name of the outputVariable on the dependency
  final String outputVariable;

  UnitKindInputVariableMappingFrom({
    required this.dependency,
    required this.outputVariable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dependency'] = dependency;
    map['outputVariable'] = outputVariable;
    return map;
  }

  factory UnitKindInputVariableMappingFrom.fromMap(Map<String, dynamic> map) {
    return UnitKindInputVariableMappingFrom(
      dependency: map['dependency'] as String,
      outputVariable: map['outputVariable'] as String,
    );
  }
}
