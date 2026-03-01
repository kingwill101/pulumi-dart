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
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? queueId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      queueId = pulumi.Input.asOptionalInput<String>(queueId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queueId: map['queueId'] == null ? null : pulumi.Output.create<String>(map['queueId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

