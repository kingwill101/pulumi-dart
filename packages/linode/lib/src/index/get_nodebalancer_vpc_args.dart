// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nodebalancer_vpc_get_nodebalancer_vpc_args_doc}
/// Arguments for getNodebalancerVpc.
/// {@endtemplate}
/// {@macro pulumi_index_get_nodebalancer_vpc_get_nodebalancer_vpc_args_doc}
class GetNodebalancerVpcArgs {
  /// The ID of the VPC configuration.
  final pulumi.Input<int> id;
  /// The ID of the parent NodeBalancer of the VPC configuration.
  final pulumi.Input<int> nodebalancerId;

  /// Creates a new [GetNodebalancerVpcArgs].
  /// [id] The ID of the VPC configuration.
  /// [nodebalancerId] The ID of the parent NodeBalancer of the VPC configuration.
  GetNodebalancerVpcArgs({
    required int id,
    required int nodebalancerId,
  }) :
      id = pulumi.Input.asInput<int>(id),
      nodebalancerId = pulumi.Input.asInput<int>(nodebalancerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nodebalancerId': nodebalancerId,
    };
  }

  factory GetNodebalancerVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcArgs(
      id: map['id'] as int,
      nodebalancerId: map['nodebalancerId'] as int,
    );
  }
}

