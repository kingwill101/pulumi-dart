// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_index_get_ai_index_args_doc}
/// Arguments for getAiIndex.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_index_get_ai_index_args_doc}
class GetAiIndexArgs {
  /// The name of the index.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// The region of the index.
  ///
  /// - - -
  final pulumi.Input<String> region;

  /// Creates a new [GetAiIndexArgs].
  /// [name] The name of the index.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the index.
  GetAiIndexArgs({
    required String name,
    String? project,
    required String region,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetAiIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetAiIndexArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
