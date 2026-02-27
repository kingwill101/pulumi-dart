// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBrokerNodes.
class GetBrokerNodesArgs {
  /// ARN of the cluster the nodes belong to.
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetBrokerNodesArgs({
    required this.clusterArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBrokerNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerNodesArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
