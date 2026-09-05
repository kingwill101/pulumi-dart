// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_outbound_caller_config.dart';

/// Result data returned by getQueue.
class GetQueueResult {
  /// ARN of the Queue.
  final String? arn;
  /// Description of the Queue.
  final String? description;
  /// Specifies the identifier of the Hours of Operation.
  final String? hoursOfOperationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  /// Maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  final int? maxContacts;
  final String? name;
  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  final List<GetQueueOutboundCallerConfig>? outboundCallerConfigs;
  /// Identifier for the Queue.
  final String? queueId;
  final String? region;
  /// Description of the Queue. Values are `ENABLED` or `DISABLED`.
  final String? status;
  /// Map of tags assigned to the Queue.
  final Map<String, String>? tags;

  /// Creates a new [GetQueueResult].
  /// [arn] ARN of the Queue.
  /// [description] Description of the Queue.
  /// [hoursOfOperationId] Specifies the identifier of the Hours of Operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [maxContacts] Maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  /// [name] Optional.
  /// [outboundCallerConfigs] A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  /// [queueId] Identifier for the Queue.
  /// [region] Optional.
  /// [status] Description of the Queue. Values are `ENABLED` or `DISABLED`.
  /// [tags] Map of tags assigned to the Queue.
  const GetQueueResult({
    this.arn,
    this.description,
    this.hoursOfOperationId,
    this.id,
    this.instanceId,
    this.maxContacts,
    this.name,
    this.outboundCallerConfigs,
    this.queueId,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hoursOfOperationId': ?hoursOfOperationId,
      'id': ?id,
      'instanceId': ?instanceId,
      'maxContacts': ?maxContacts,
      'name': ?name,
      'outboundCallerConfigs': ?(() { final guardedValue = outboundCallerConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQueueOutboundCallerConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queueId': ?queueId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hoursOfOperationId: (() { final guardedValue = map['hoursOfOperationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxContacts: (() { final guardedValue = map['maxContacts']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundCallerConfigs: (() { final guardedValue = map['outboundCallerConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQueueOutboundCallerConfig>(guardedValue, (value) => GetQueueOutboundCallerConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
