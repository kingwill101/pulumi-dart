// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_acl_acl_args_doc}
/// The set of arguments for Acl.
/// {@endtemplate}
/// {@macro pulumi_sag_acl_acl_args_doc}
class AclArgs {
  /// The name of the ACL instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  final pulumi.Input<String>? name;

  /// Creates a new [AclArgs].
  /// [name] The name of the ACL instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  AclArgs({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory AclArgs.fromMap(Map<String, dynamic> map) {
    return AclArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
