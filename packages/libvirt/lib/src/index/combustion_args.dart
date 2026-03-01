// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_combustion_combustion_args_doc}
/// The set of arguments for Combustion.
/// {@endtemplate}
/// {@macro pulumi_index_combustion_combustion_args_doc}
class CombustionArgs {
  /// Combustion script content (shell script)
  final pulumi.Input<String> content;
  /// Name for this combustion resource
  final pulumi.Input<String>? name;

  /// Creates a new [CombustionArgs].
  /// [content] Combustion script content (shell script)
  /// [name] Name for this combustion resource
  CombustionArgs({
    required String content,
    String? name,
  }) :
      content = pulumi.Input.asInput<String>(content),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': ?name,
    };
  }

  factory CombustionArgs.fromMap(Map<String, dynamic> map) {
    return CombustionArgs(
      content: map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

