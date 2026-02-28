// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_cache_config_ai_cache_config_args_doc}
/// The set of arguments for AiCacheConfig.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_cache_config_ai_cache_config_args_doc}
class AiCacheConfigArgs {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  final pulumi.Input<bool> disableCache;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AiCacheConfigArgs].
  /// [disableCache] If set to true, disables GenAI caching. Otherwise caching is enabled.
  /// [project] The ID of the project in which the resource belongs.
  AiCacheConfigArgs({
    required bool disableCache,
    String? project,
  })  : disableCache = pulumi.Input.asInput<bool>(disableCache),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableCache'] = disableCache;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AiCacheConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiCacheConfigArgs(
      disableCache: map['disableCache'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
