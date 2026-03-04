// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The ARN assigned by AWS for this group.
  final pulumi.Input<String>? arn;

  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  final pulumi.Input<String>? name;

  /// Path in which to create the group.
  final pulumi.Input<String>? path;

  /// The [unique ID][1] assigned by AWS.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [GroupState].
  /// [arn] The ARN assigned by AWS for this group.
  /// [name] The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  /// [path] Path in which to create the group.
  /// [uniqueId] The [unique ID][1] assigned by AWS.
  GroupState({this.arn, this.name, this.path, this.uniqueId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'path': ?path,
      'uniqueId': ?uniqueId,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uniqueId: (() {
        final guardedValue = map['uniqueId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
