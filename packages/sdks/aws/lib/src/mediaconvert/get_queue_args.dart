// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mediaconvert_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_mediaconvert_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// Unique identifier of the queue. The same as `name`.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetQueueArgs].
  /// [id] Unique identifier of the queue. The same as `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  GetQueueArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

