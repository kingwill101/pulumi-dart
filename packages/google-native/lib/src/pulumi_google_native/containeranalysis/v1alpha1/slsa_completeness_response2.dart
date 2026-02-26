// ignore_for_file: unused_element, unnecessary_cast

/// Indicates that the builder claims certain fields in this message to be complete.
class SlsaCompletenessResponse2 {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final bool arguments;

  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final bool environment;

  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final bool materials;

  SlsaCompletenessResponse2({
    required this.arguments,
    required this.environment,
    required this.materials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arguments'] = arguments;
    map['environment'] = environment;
    map['materials'] = materials;
    return map;
  }

  factory SlsaCompletenessResponse2.fromMap(Map<String, dynamic> map) {
    return SlsaCompletenessResponse2(
      arguments: map['arguments'] as bool,
      environment: map['environment'] as bool,
      materials: map['materials'] as bool,
    );
  }
}
