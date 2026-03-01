// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_iambinding_condition.dart';

/// {@template pulumi_spanner_database_iambinding_database_iambinding_args_doc}
/// The set of arguments for DatabaseIAMBinding.
/// {@endtemplate}
/// {@macro pulumi_spanner_database_iambinding_database_iambinding_args_doc}
class DatabaseIAMBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<DatabaseIAMBindingCondition>? condition;

  /// The name of the Spanner database.
  final pulumi.Input<String> database;

  /// The name of the Spanner instance the database belongs to.
  final pulumi.Input<String> instance;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.spanner.DatabaseIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [DatabaseIAMBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [database] The name of the Spanner database.
  /// [instance] The name of the Spanner instance the database belongs to.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  DatabaseIAMBindingArgs({
    DatabaseIAMBindingCondition? condition,
    required String database,
    required String instance,
    required List<String> members,
    String? project,
    required String role,
  }) : condition = pulumi.Input.asOptionalInput<DatabaseIAMBindingCondition>(
         condition,
       ),
       database = pulumi.Input.asInput<String>(database),
       instance = pulumi.Input.asInput<String>(instance),
       members = pulumi.Input.asInput<List<String>>(members),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseIAMBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'database': database,
      'instance': instance,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory DatabaseIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseIAMBindingArgs(
      condition: map['condition'] == null
          ? null
          : DatabaseIAMBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      database: map['database'] as String,
      instance: map['instance'] as String,
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
