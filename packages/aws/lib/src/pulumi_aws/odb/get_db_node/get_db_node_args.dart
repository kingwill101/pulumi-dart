// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDbNode.
class GetDbNodeArgs {
  /// The unique identifier of the cloud vm cluster.
  final pulumi.Input<String> cloudVmClusterId;

  /// The unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetDbNodeArgs({
    required this.cloudVmClusterId,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudVmClusterId'] = cloudVmClusterId;
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDbNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodeArgs(
      cloudVmClusterId: pulumi.Input.asInput<String>(map['cloudVmClusterId']),
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
