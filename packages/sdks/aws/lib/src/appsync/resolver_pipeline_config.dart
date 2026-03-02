// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverPipelineConfig {
  /// A list of Function objects.
  final pulumi.Input<List<String>>? functions;

  /// Creates a new [ResolverPipelineConfig].
  /// [functions] A list of Function objects.
  ResolverPipelineConfig({
    this.functions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions': ?functions,
    };
  }

  factory ResolverPipelineConfig.fromMap(Map<String, dynamic> map) {
    return ResolverPipelineConfig(
      functions: map['functions'] == null ? null : ((map['functions'] as List).cast<String>()).input(),
    );
  }
}

