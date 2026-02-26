// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeGroups.
class GetNodeGroupsArgs {
  /// Name of the cluster.
  final Input<String> clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetNodeGroupsArgs({
    required this.clusterName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetNodeGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupsArgs(
      clusterName: Input.asInput<String>(map['clusterName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
