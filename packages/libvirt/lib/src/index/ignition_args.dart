// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ignition_ignition_args_doc}
/// The set of arguments for Ignition.
/// {@endtemplate}
/// {@macro pulumi_index_ignition_ignition_args_doc}
class IgnitionArgs {
  /// Ignition configuration content (JSON)
  final pulumi.Input<String> content;
  /// Name for this ignition resource
  final pulumi.Input<String>? name;

  /// Creates a new [IgnitionArgs].
  /// [content] Ignition configuration content (JSON)
  /// [name] Name for this ignition resource
  IgnitionArgs({
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

  factory IgnitionArgs.fromMap(Map<String, dynamic> map) {
    return IgnitionArgs(
      content: map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

