// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_peering_get_vpc_peering_args_doc}
/// Arguments for getVpcPeering.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_peering_get_vpc_peering_args_doc}
class GetVpcPeeringArgs {
  /// The unique identifier of an existing VPC Peering.
  final pulumi.Input<String>? id;
  /// The name of an existing VPC Peering.
  final pulumi.Input<String>? name;
  /// The list of VPC IDs involved in the peering.
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [GetVpcPeeringArgs].
  /// [id] The unique identifier of an existing VPC Peering.
  /// [name] The name of an existing VPC Peering.
  /// [vpcIds] The list of VPC IDs involved in the peering.
  GetVpcPeeringArgs({
    String? id,
    String? name,
    List<String>? vpcIds,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'vpcIds': ?vpcIds,
    };
  }

  factory GetVpcPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      vpcIds: map['vpcIds'] == null ? null : (map['vpcIds'] as List).cast<String>(),
    );
  }
}

