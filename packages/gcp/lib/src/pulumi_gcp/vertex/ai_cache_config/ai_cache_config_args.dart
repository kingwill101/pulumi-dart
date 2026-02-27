// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AiCacheConfig.
class AiCacheConfigArgs {
  /// If set to true, disables GenAI caching. Otherwise caching is enabled.
  final pulumi.Input<bool> disableCache;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AiCacheConfigArgs({
    required this.disableCache,
    this.project,
  });

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
      disableCache: pulumi.Input.asInput<bool>(map['disableCache']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
