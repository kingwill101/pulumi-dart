// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../queue_outbound_caller_config/queue_outbound_caller_config.dart';

/// The set of arguments for Queue.
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['hoursOfOperationId'] = hoursOfOperationId;
    map['instanceId'] = instanceId;
    final maxContactsValue = maxContacts;
    if (maxContactsValue != null) {
      map['maxContacts'] = maxContactsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outboundCallerConfigValue = outboundCallerConfig;
    if (outboundCallerConfigValue != null) {
      map['outboundCallerConfig'] = pulumi.Input.mapOptionalInputValue<
              QueueOutboundCallerConfig, Map<String, dynamic>>(
          outboundCallerConfigValue, (value) => value.toMap());
    }
    final quickConnectIdsValue = quickConnectIds;
    if (quickConnectIdsValue != null) {
      map['quickConnectIds'] = quickConnectIdsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      hoursOfOperationId:
          pulumi.Input.asInput<String>(map['hoursOfOperationId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      maxContacts: pulumi.Input.asOptionalInput<int>(map['maxContacts']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outboundCallerConfig:
          pulumi.Input.asOptionalInput<QueueOutboundCallerConfig>(
              map['outboundCallerConfig']),
      quickConnectIds:
          pulumi.Input.asOptionalInput<List<String>>(map['quickConnectIds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
