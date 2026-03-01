// ignore_for_file: unused_element, unnecessary_cast

class UnitKindOutputVariableMappingTo {
  /// Alias of the dependency that the inputVariable will pass its value to
  final String dependency;

  /// Tells SaaS Runtime if this mapping should be used during lookup or not
  final bool? ignoreForLookup;

  /// Name of the inputVariable on the dependency
  final String inputVariable;

  /// Creates a new [UnitKindOutputVariableMappingTo].
  /// [dependency] Alias of the dependency that the inputVariable will pass its value to
  /// [ignoreForLookup] Tells SaaS Runtime if this mapping should be used during lookup or not
  /// [inputVariable] Name of the inputVariable on the dependency
  UnitKindOutputVariableMappingTo({
    required this.dependency,
    this.ignoreForLookup,
    required this.inputVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependency': dependency,
      'ignoreForLookup': ?ignoreForLookup,
      'inputVariable': inputVariable,
    };
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
