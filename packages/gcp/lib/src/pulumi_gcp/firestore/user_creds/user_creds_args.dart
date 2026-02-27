// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserCreds.
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

  UserCredsArgs({
    required this.database,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory UserCredsArgs.fromMap(Map<String, dynamic> map) {
    return UserCredsArgs(
      database: pulumi.Input.asInput<String>(map['database']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
