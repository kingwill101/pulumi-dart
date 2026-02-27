// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDedicatedIpPool.
class GetDedicatedIpPoolArgs {
  /// Name of the dedicated IP pool.
  final pulumi.Input<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags attached to the pool.
  final pulumi.Input<Map<String, String>>? tags;

  GetDedicatedIpPoolArgs({
    required this.poolName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['poolName'] = poolName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDedicatedIpPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedIpPoolArgs(
      poolName: pulumi.Input.asInput<String>(map['poolName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
