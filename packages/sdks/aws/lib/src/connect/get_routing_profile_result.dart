// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routing_profile_media_concurrency.dart';
import 'get_routing_profile_queue_config.dart';

/// Result data returned by getRoutingProfile.
class GetRoutingProfileResult {
  /// ARN of the Routing Profile.
  final String? arn;
  /// Specifies the default outbound queue for the Routing Profile.
  final String? defaultOutboundQueueId;
  /// Description of the Routing Profile.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  /// One or more `mediaConcurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `mediaConcurrencies` block is documented below.
  final List<GetRoutingProfileMediaConcurrency>? mediaConcurrencies;
  final String? name;
  /// One or more `queueConfigs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queueConfigs` block is documented below.
  final List<GetRoutingProfileQueueConfig>? queueConfigs;
  final String? region;
  final String? routingProfileId;
  /// Map of tags to assign to the Routing Profile.
  final Map<String, String>? tags;

  /// Creates a new [GetRoutingProfileResult].
  /// [arn] ARN of the Routing Profile.
  /// [defaultOutboundQueueId] Specifies the default outbound queue for the Routing Profile.
  /// [description] Description of the Routing Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [mediaConcurrencies] One or more `mediaConcurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `mediaConcurrencies` block is documented below.
  /// [name] Optional.
  /// [queueConfigs] One or more `queueConfigs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queueConfigs` block is documented below.
  /// [region] Optional.
  /// [routingProfileId] Optional.
  /// [tags] Map of tags to assign to the Routing Profile.
  const GetRoutingProfileResult({
    this.arn,
    this.defaultOutboundQueueId,
    this.description,
    this.id,
    this.instanceId,
    this.mediaConcurrencies,
    this.name,
    this.queueConfigs,
    this.region,
    this.routingProfileId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultOutboundQueueId': ?defaultOutboundQueueId,
      'description': ?description,
      'id': ?id,
      'instanceId': ?instanceId,
      'mediaConcurrencies': ?(() { final guardedValue = mediaConcurrencies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoutingProfileMediaConcurrency, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'queueConfigs': ?(() { final guardedValue = queueConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoutingProfileQueueConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'routingProfileId': ?routingProfileId,
      'tags': ?tags,
    };
  }

  factory GetRoutingProfileResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultOutboundQueueId: (() { final guardedValue = map['defaultOutboundQueueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mediaConcurrencies: (() { final guardedValue = map['mediaConcurrencies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoutingProfileMediaConcurrency>(guardedValue, (value) => GetRoutingProfileMediaConcurrency.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueConfigs: (() { final guardedValue = map['queueConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoutingProfileQueueConfig>(guardedValue, (value) => GetRoutingProfileQueueConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingProfileId: (() { final guardedValue = map['routingProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
