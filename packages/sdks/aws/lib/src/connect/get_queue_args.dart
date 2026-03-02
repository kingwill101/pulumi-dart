// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_connect_get_queue_get_queue_args_doc}
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

  /// Creates a new [GetQueueArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Queue by name
  /// [queueId] Returns information on a specific Queue by Queue id
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the Queue.
  GetQueueArgs({
    required this.instanceId,
    this.name,
    this.queueId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'queueId': ?queueId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      queueId: map['queueId'] == null ? null : ((map['queueId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

