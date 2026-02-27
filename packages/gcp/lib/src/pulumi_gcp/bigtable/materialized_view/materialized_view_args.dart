// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MaterializedView.
class MaterializedViewArgs {
  /// Set to true to make the MaterializedView protected against deletion.
  final pulumi.Input<bool>? deletionProtection;

  /// The name of the instance to create the materialized view within.
  final pulumi.Input<String>? instance;

  /// The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String> materializedViewId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The materialized view's select query.
  final pulumi.Input<String> query;

  MaterializedViewArgs({
    this.deletionProtection,
    this.instance,
    required this.materializedViewId,
    this.project,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    map['materializedViewId'] = materializedViewId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['query'] = query;
    return map;
  }

  factory MaterializedViewArgs.fromMap(Map<String, dynamic> map) {
    return MaterializedViewArgs(
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      instance: pulumi.Input.asOptionalInput<String>(map['instance']),
      materializedViewId:
          pulumi.Input.asInput<String>(map['materializedViewId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      query: pulumi.Input.asInput<String>(map['query']),
    );
  }
}
