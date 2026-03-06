// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_outbound_caller_config.dart';

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// The Amazon Resource Name (ARN) of the Queue.
  final pulumi.Input<String>? arn;
  /// Specifies the description of the Queue.
  final pulumi.Input<String>? description;
  /// Specifies the identifier of the Hours of Operation.
  final pulumi.Input<String>? hoursOfOperationId;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  final pulumi.Input<int>? maxContacts;
  /// Specifies the name of the Queue.
  final pulumi.Input<String>? name;
  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  final pulumi.Input<QueueOutboundCallerConfig>? outboundCallerConfig;
  /// The identifier for the Queue.
  final pulumi.Input<String>? queueId;
  /// Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  final pulumi.Input<List<String>>? quickConnectIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? status;
  /// Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [QueueState].
  /// [arn] The Amazon Resource Name (ARN) of the Queue.
  /// [description] Specifies the description of the Queue.
  /// [hoursOfOperationId] Specifies the identifier of the Hours of Operation.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [maxContacts] Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  /// [name] Specifies the name of the Queue.
  /// [outboundCallerConfig] A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  /// [queueId] The identifier for the Queue.
  /// [quickConnectIds] Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  /// [tags] Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const QueueState({
    this.arn,
    this.description,
    this.hoursOfOperationId,
    this.instanceId,
    this.maxContacts,
    this.name,
    this.outboundCallerConfig,
    this.queueId,
    this.quickConnectIds,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hoursOfOperationId': ?hoursOfOperationId,
      'instanceId': ?instanceId,
      'maxContacts': ?maxContacts,
      'name': ?name,
      'outboundCallerConfig': ?pulumi.Input.mapOptionalInputValue<QueueOutboundCallerConfig, Map<String, dynamic>>(outboundCallerConfig, (value) => value.toMap()),
      'queueId': ?queueId,
      'quickConnectIds': ?quickConnectIds,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hoursOfOperationId: (() { final guardedValue = map['hoursOfOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxContacts: (() { final guardedValue = map['maxContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundCallerConfig: (() { final guardedValue = map['outboundCallerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueOutboundCallerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quickConnectIds: (() { final guardedValue = map['quickConnectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

