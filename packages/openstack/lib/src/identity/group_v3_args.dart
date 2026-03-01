// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_group_v3_group_v3_args_doc}
/// The set of arguments for GroupV3.
/// {@endtemplate}
/// {@macro pulumi_identity_group_v3_group_v3_args_doc}
class GroupV3Args {
  /// A description of the group.
  final pulumi.Input<String>? description;
  /// The domain the group belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new group.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupV3Args].
  /// [description] A description of the group.
  /// [domainId] The domain the group belongs to.
  /// [name] The name of the group.
  /// [region] The region in which to obtain the V3 Keystone client.
  GroupV3Args({
    String? description,
    String? domainId,
    String? name,
    String? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GroupV3Args.fromMap(Map<String, dynamic> map) {
    return GroupV3Args(
      description: map['description'] == null ? null : map['description'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

