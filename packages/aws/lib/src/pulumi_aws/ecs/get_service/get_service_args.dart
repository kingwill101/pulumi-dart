// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceArgs {
  /// ARN of the ECS Cluster
  final pulumi.Input<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the ECS Service
  final pulumi.Input<String> serviceName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetServiceArgs({
    required this.clusterArn,
    this.region,
    required this.serviceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
