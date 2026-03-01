// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_index_role_role_args_doc}
class RoleArgs {
  /// The name of the role.
  final pulumi.Input<String>? name;

  /// Creates a new [RoleArgs].
  /// [name] The name of the role.
  RoleArgs({
    String? name,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

