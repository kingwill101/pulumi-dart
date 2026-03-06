// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverPipelineConfig {
  /// A list of Function objects.
  final pulumi.Input<List<String>>? functions;

  /// Creates a new [ResolverPipelineConfig].
  /// [functions] A list of Function objects.
  const ResolverPipelineConfig({
    this.functions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functions': ?functions,
    };
  }

  factory ResolverPipelineConfig.fromMap(Map<String, dynamic> map) {
    return ResolverPipelineConfig(
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

