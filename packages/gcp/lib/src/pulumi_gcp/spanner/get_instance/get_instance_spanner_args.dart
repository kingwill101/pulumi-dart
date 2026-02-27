// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceSpannerArgs {
  final pulumi.Input<String>? config;
  final pulumi.Input<String>? displayName;

  /// The name of the spanner instance.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetInstanceSpannerArgs({
    this.config,
    this.displayName,
    required this.name,
    this.project,
  });

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

  factory GetInstanceSpannerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpannerArgs(
      config: pulumi.Input.asOptionalInput<String>(map['config']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
