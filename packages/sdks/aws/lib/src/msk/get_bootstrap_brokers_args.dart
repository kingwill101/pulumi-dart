// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_bootstrap_brokers_get_bootstrap_brokers_args_doc}
/// Arguments for getBootstrapBrokers.
/// {@endtemplate}
/// {@macro pulumi_msk_get_bootstrap_brokers_get_bootstrap_brokers_args_doc}
class GetBootstrapBrokersArgs {
  /// ARN of the cluster the nodes belong to.
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBootstrapBrokersArgs].
  /// [clusterArn] ARN of the cluster the nodes belong to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBootstrapBrokersArgs({required this.clusterArn, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clusterArn': clusterArn, 'region': ?region};
  }

  factory GetBootstrapBrokersArgs.fromMap(Map<String, dynamic> map) {
    return GetBootstrapBrokersArgs(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
