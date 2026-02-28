// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_user_creds_user_creds_args_doc}
/// The set of arguments for UserCreds.
/// {@endtemplate}
/// {@macro pulumi_firestore_user_creds_user_creds_args_doc}
class UserCredsArgs {
  /// The Firestore database ID.
  final pulumi.Input<String> database;
  /// The ID to use for the user creds, which will become the final component
  /// of the user cred's resource name.
  /// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
  /// with first character a letter and the last a letter or a number. Must not
  /// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [UserCredsArgs].
  /// [database] The Firestore database ID.
  /// [name] The ID to use for the user creds, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  UserCredsArgs({
    required String database,
    String? name,
    String? project,
  }) :
      database = pulumi.Input.asInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'name': ?name,
      'project': ?project,
    };
  }

  factory UserCredsArgs.fromMap(Map<String, dynamic> map) {
    return UserCredsArgs(
      database: map['database'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

