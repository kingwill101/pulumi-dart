// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_outbound_caller_config.dart';

/// {@template pulumi_connect_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_connect_queue_queue_args_doc}
class QueueArgs {
  /// Specifies the description of the Queue.
  final pulumi.Input<String>? description;
  /// Specifies the identifier of the Hours of Operation.
  final pulumi.Input<String> hoursOfOperationId;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  final pulumi.Input<int>? maxContacts;
  /// Specifies the name of the Queue.
  final pulumi.Input<String>? name;
  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  final pulumi.Input<QueueOutboundCallerConfig>? outboundCallerConfig;
  /// Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  final pulumi.Input<List<String>>? quickConnectIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? status;
  /// Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QueueArgs].
  /// [description] Specifies the description of the Queue.
  /// [hoursOfOperationId] Specifies the identifier of the Hours of Operation.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [maxContacts] Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  /// [name] Specifies the name of the Queue.
  /// [outboundCallerConfig] A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  /// [quickConnectIds] Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  /// [tags] Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  QueueArgs({
    this.description,
    required this.hoursOfOperationId,
    required this.instanceId,
    this.maxContacts,
    this.name,
    this.outboundCallerConfig,
    this.quickConnectIds,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hoursOfOperationId': hoursOfOperationId,
      'instanceId': instanceId,
      'maxContacts': ?maxContacts,
      'name': ?name,
      'outboundCallerConfig': ?pulumi.Input.mapOptionalInputValue<QueueOutboundCallerConfig, Map<String, dynamic>>(outboundCallerConfig, (value) => value.toMap()),
      'quickConnectIds': ?quickConnectIds,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hoursOfOperationId: (map['hoursOfOperationId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      maxContacts: map['maxContacts'] == null ? null : (map['maxContacts'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outboundCallerConfig: map['outboundCallerConfig'] == null ? null : (QueueOutboundCallerConfig.fromMap((map['outboundCallerConfig'] as Map).cast<String, dynamic>())).input(),
      quickConnectIds: map['quickConnectIds'] == null ? null : ((map['quickConnectIds'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

