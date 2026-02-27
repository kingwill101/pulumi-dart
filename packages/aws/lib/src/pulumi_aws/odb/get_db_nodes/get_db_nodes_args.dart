// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDbNodes.
class GetDbNodesArgs {
  /// The unique identifier of the cloud vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> cloudVmClusterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetDbNodesArgs({
    required this.cloudVmClusterId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudVmClusterId'] = cloudVmClusterId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDbNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodesArgs(
      cloudVmClusterId: pulumi.Input.asInput<String>(map['cloudVmClusterId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
