// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBootstrapBrokers.
class GetBootstrapBrokersArgs {
  /// ARN of the cluster the nodes belong to.
  final Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBootstrapBrokersArgs({
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

  factory GetBootstrapBrokersArgs.fromMap(Map<String, dynamic> map) {
    return GetBootstrapBrokersArgs(
      clusterArn: Input.asInput<String>(map['clusterArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
