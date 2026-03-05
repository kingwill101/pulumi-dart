// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_outbound_caller_config.dart';

/// Result data returned by getQueue.
class GetQueueResult {
  /// ARN of the Queue.
  final String arn;
  /// Description of the Queue.
  final String description;
  /// Specifies the identifier of the Hours of Operation.
  final String hoursOfOperationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  /// Maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  final int maxContacts;
  final String name;
  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  final List<GetQueueOutboundCallerConfig> outboundCallerConfigs;
  /// Identifier for the Queue.
  final String queueId;
  final String region;
  /// Description of the Queue. Values are `ENABLED` or `DISABLED`.
  final String status;
  /// Map of tags assigned to the Queue.
  final Map<String, String> tags;

  /// Creates a new [GetQueueResult].
  /// [arn] ARN of the Queue.
  /// [description] Description of the Queue.
  /// [hoursOfOperationId] Specifies the identifier of the Hours of Operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [maxContacts] Maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  /// [name] Required.
  /// [outboundCallerConfigs] A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  /// [queueId] Identifier for the Queue.
  /// [region] Required.
  /// [status] Description of the Queue. Values are `ENABLED` or `DISABLED`.
  /// [tags] Map of tags assigned to the Queue.
  GetQueueResult({
    required this.arn,
    required this.description,
    required this.hoursOfOperationId,
    required this.id,
    required this.instanceId,
    required this.maxContacts,
    required this.name,
    required this.outboundCallerConfigs,
    required this.queueId,
    required this.region,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'hoursOfOperationId': hoursOfOperationId,
      'id': id,
      'instanceId': instanceId,
      'maxContacts': maxContacts,
      'name': name,
      'outboundCallerConfigs': pulumi.Input.encodeList<GetQueueOutboundCallerConfig, Map<String, dynamic>>(outboundCallerConfigs, (value) => value.toMap()),
      'queueId': queueId,
      'region': region,
      'status': status,
      'tags': tags,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      hoursOfOperationId: map['hoursOfOperationId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      maxContacts: map['maxContacts'] as int,
      name: map['name'] as String,
      outboundCallerConfigs: pulumi.Input.decodeList<GetQueueOutboundCallerConfig>(map['outboundCallerConfigs']!, (value) => GetQueueOutboundCallerConfig.fromMap((value as Map).cast<String, dynamic>())),
      queueId: map['queueId'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

