// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String>? config;
  final pulumi.Input<String>? displayName;

  /// The name of the spanner instance.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [config] Optional.
  /// [displayName] Optional.
  /// [name] The name of the spanner instance.
  /// [project] The project in which the resource belongs. If it
  GetInstanceArgs({
    String? config,
    String? displayName,
    required String name,
    String? project,
  })  : config = pulumi.Input.asOptionalInput<String>(config),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      config: map['config'] == null ? null : map['config'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
