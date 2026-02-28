// ignore_for_file: unused_element, unnecessary_cast

class ResolverPipelineConfig {
  /// A list of Function objects.
  final List<String>? functions;

  /// Creates a new [ResolverPipelineConfig].
  /// [functions] A list of Function objects.
  ResolverPipelineConfig({
    this.functions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionsValue = functions;
    if (functionsValue != null) {
      map['functions'] = functionsValue;
    }
    return map;
  }

  factory ResolverPipelineConfig.fromMap(Map<String, dynamic> map) {
    return ResolverPipelineConfig(
      functions: map['functions'] == null
          ? null
          : (map['functions'] as List).cast<String>(),
    );
  }
}
