// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQueue.
class GetQueueArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Queue by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `queue_id` is required.
  final pulumi.Input<String>? name;

  /// Returns information on a specific Queue by Queue id
  final pulumi.Input<String>? queueId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the Queue.
  final pulumi.Input<Map<String, String>>? tags;

  GetQueueArgs({
    required this.instanceId,
    this.name,
    this.queueId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final queueIdValue = queueId;
    if (queueIdValue != null) {
      map['queueId'] = queueIdValue;
    }
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

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queueId: pulumi.Input.asOptionalInput<String>(map['queueId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
