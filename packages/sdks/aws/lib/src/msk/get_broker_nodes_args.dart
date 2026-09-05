// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_broker_nodes_get_broker_nodes_args_doc}
/// Arguments for getBrokerNodes.
/// {@endtemplate}
/// {@macro pulumi_msk_get_broker_nodes_get_broker_nodes_args_doc}
class GetBrokerNodesArgs {
  /// ARN of the cluster the nodes belong to.
  final pulumi.Input<String> clusterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetBrokerNodesArgs].
  /// [clusterArn] ARN of the cluster the nodes belong to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBrokerNodesArgs({
    required this.clusterArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'region': ?region,
    };
  }

  factory GetBrokerNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesArgs(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
