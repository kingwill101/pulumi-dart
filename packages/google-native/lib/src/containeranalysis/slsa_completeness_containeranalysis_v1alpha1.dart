// ignore_for_file: unused_element, unnecessary_cast

/// Indicates that the builder claims certain fields in this message to be complete.
class SlsaCompletenessContaineranalysisV1alpha1 {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final bool? arguments;

  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final bool? environment;

  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final bool? materials;

  /// Creates a new [SlsaCompletenessContaineranalysisV1alpha1].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  SlsaCompletenessContaineranalysisV1alpha1({
    this.arguments,
    this.environment,
    this.materials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'environment': ?environment,
      'materials': ?materials,
    };
  }

  factory SlsaCompletenessContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaCompletenessContaineranalysisV1alpha1(
      arguments: map['arguments'] == null ? null : map['arguments'] as bool,
      environment: map['environment'] == null
          ? null
          : map['environment'] as bool,
      materials: map['materials'] == null ? null : map['materials'] as bool,
    );
  }
}
