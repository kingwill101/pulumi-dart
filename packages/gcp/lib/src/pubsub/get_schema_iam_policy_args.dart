// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_get_schema_iam_policy_get_schema_iam_policy_args_doc}
/// Arguments for getSchemaIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_get_schema_iam_policy_get_schema_iam_policy_args_doc}
class GetSchemaIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> schema;

  /// Creates a new [GetSchemaIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [schema] Used to find the parent resource to bind the IAM policy to
  GetSchemaIamPolicyArgs({
    String? project,
    required String schema,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        schema = pulumi.Input.asInput<String>(schema);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schema'] = schema;
    return map;
  }

  factory GetSchemaIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaIamPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      schema: map['schema'] as String,
    );
  }
}
