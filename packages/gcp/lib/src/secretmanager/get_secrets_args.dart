// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secrets_get_secrets_args_doc}
/// Arguments for getSecrets.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secrets_get_secrets_args_doc}
class GetSecretsArgs {
  /// Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all secrets are listed.
  final pulumi.Input<String>? filter;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSecretsArgs].
  /// [filter] Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all secrets are listed.
  /// [project] The ID of the project.
  GetSecretsArgs({
    String? filter,
    String? project,
  })  : filter = pulumi.Input.asOptionalInput<String>(filter),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
