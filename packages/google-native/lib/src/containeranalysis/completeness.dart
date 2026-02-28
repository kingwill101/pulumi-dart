// ignore_for_file: unused_element, unnecessary_cast


/// Indicates that the builder claims certain fields in this message to be complete.
class Completeness {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final bool? arguments;
  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final bool? environment;
  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final bool? materials;

  /// Creates a new [Completeness].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  Completeness({
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

  factory Completeness.fromMap(Map<String, dynamic> map) {
    return Completeness(
      arguments: map['arguments'] == null ? null : map['arguments'] as bool,
      environment: map['environment'] == null ? null : map['environment'] as bool,
      materials: map['materials'] == null ? null : map['materials'] as bool,
    );
  }
}

