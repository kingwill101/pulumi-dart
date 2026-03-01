// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_identity_role_role_args_doc}
class RoleArgs {
  /// The domain the role belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the role.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Role.
  final pulumi.Input<String>? region;

  /// Creates a new [RoleArgs].
  /// [domainId] The domain the role belongs to.
  /// [name] The name of the role.
  /// [region] The region in which to obtain the V3 Keystone client.
  RoleArgs({
    String? domainId,
    String? name,
    String? region,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

