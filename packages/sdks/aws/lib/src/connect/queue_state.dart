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
  QueueState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hoursOfOperationId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? maxContacts,
    pulumi.Output<String>? name,
    pulumi.Output<QueueOutboundCallerConfig>? outboundCallerConfig,
    pulumi.Output<String>? queueId,
    pulumi.Output<List<String>>? quickConnectIds,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      hoursOfOperationId = pulumi.Input.asOptionalInput<String>(hoursOfOperationId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      maxContacts = pulumi.Input.asOptionalInput<int>(maxContacts),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundCallerConfig = pulumi.Input.asOptionalInput<QueueOutboundCallerConfig>(outboundCallerConfig),
      queueId = pulumi.Input.asOptionalInput<String>(queueId),
      quickConnectIds = pulumi.Input.asOptionalInput<List<String>>(quickConnectIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hoursOfOperationId: map['hoursOfOperationId'] == null ? null : pulumi.Output.create<String>(map['hoursOfOperationId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      maxContacts: map['maxContacts'] == null ? null : pulumi.Output.create<int>(map['maxContacts'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundCallerConfig: map['outboundCallerConfig'] == null ? null : pulumi.Output.create<QueueOutboundCallerConfig>(QueueOutboundCallerConfig.fromMap((map['outboundCallerConfig'] as Map).cast<String, dynamic>())),
      queueId: map['queueId'] == null ? null : pulumi.Output.create<String>(map['queueId'] as String),
      quickConnectIds: map['quickConnectIds'] == null ? null : pulumi.Output.create<List<String>>((map['quickConnectIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

