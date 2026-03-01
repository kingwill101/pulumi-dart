// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_consumer_group_consumer_group_args_doc}
/// The set of arguments for ConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_alikafka_consumer_group_consumer_group_args_doc}
class ConsumerGroupArgs {
  /// ID of the consumer group.
  final pulumi.Input<String> consumerId;
  /// Field `description` has been deprecated from provider version 1.268.0. New field `remark` instead.
  final pulumi.Input<String>? description;
  /// ID of the ALIKAFKA Instance that owns the groups.
  final pulumi.Input<String> instanceId;
  /// The remark of the resource.
  final pulumi.Input<String>? remark;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConsumerGroupArgs].
  /// [consumerId] ID of the consumer group.
  /// [description] Field `description` has been deprecated from provider version 1.268.0. New field `remark` instead.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the groups.
  /// [remark] The remark of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  ConsumerGroupArgs({
    required pulumi.Output<String> consumerId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? remark,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      consumerId = pulumi.Input.asInput<String>(consumerId),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': consumerId,
      'description': ?description,
      'instanceId': instanceId,
      'remark': ?remark,
      'tags': ?tags,
    };
  }

  factory ConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupArgs(
      consumerId: pulumi.Output.create<String>(map['consumerId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

