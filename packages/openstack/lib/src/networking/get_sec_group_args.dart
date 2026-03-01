// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_sec_group_get_sec_group_args_doc}
/// Arguments for getSecGroup.
/// {@endtemplate}
/// {@macro pulumi_networking_get_sec_group_get_sec_group_args_doc}
class GetSecGroupArgs {
  /// Human-readable description the the subnet.
  final pulumi.Input<String>? description;
  /// The name of the security group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve security groups ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The ID of the security group.
  final pulumi.Input<String>? secgroupId;
  /// Whether the security group is stateful or not.
  final pulumi.Input<bool>? stateful;
  /// The list of security group tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the security group.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetSecGroupArgs].
  /// [description] Human-readable description the the subnet.
  /// [name] The name of the security group.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [secgroupId] The ID of the security group.
  /// [stateful] Whether the security group is stateful or not.
  /// [tags] The list of security group tags to filter.
  /// [tenantId] The owner of the security group.
  GetSecGroupArgs({
    String? description,
    String? name,
    String? region,
    String? secgroupId,
    bool? stateful,
    List<String>? tags,
    String? tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      secgroupId = pulumi.Input.asOptionalInput<String>(secgroupId),
      stateful = pulumi.Input.asOptionalInput<bool>(stateful),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'secgroupId': ?secgroupId,
      'stateful': ?stateful,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetSecGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSecGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secgroupId: map['secgroupId'] == null ? null : map['secgroupId'] as String,
      stateful: map['stateful'] == null ? null : map['stateful'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

