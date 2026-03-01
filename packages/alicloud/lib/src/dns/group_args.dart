// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_dns_group_group_args_doc}
class GroupArgs {
  /// Name of the domain group.
  final pulumi.Input<String>? name;

  /// Creates a new [GroupArgs].
  /// [name] Name of the domain group.
  GroupArgs({
    String? name,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

