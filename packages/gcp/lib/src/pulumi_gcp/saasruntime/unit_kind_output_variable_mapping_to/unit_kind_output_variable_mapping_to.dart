// ignore_for_file: unused_element, unnecessary_cast

class UnitKindOutputVariableMappingTo {
  /// Alias of the dependency that the inputVariable will pass its value to
  final String dependency;

  /// Tells SaaS Runtime if this mapping should be used during lookup or not
  final bool? ignoreForLookup;

  /// Name of the inputVariable on the dependency
  final String inputVariable;

  UnitKindOutputVariableMappingTo({
    required this.dependency,
    this.ignoreForLookup,
    required this.inputVariable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dependency'] = dependency;
    final ignoreForLookupValue = ignoreForLookup;
    if (ignoreForLookupValue != null) {
      map['ignoreForLookup'] = ignoreForLookupValue;
    }
    map['inputVariable'] = inputVariable;
    return map;
  }

  factory UnitKindOutputVariableMappingTo.fromMap(Map<String, dynamic> map) {
    return UnitKindOutputVariableMappingTo(
      dependency: map['dependency'] as String,
      ignoreForLookup: map['ignoreForLookup'] == null
          ? null
          : map['ignoreForLookup'] as bool,
      inputVariable: map['inputVariable'] as String,
    );
  }
}
