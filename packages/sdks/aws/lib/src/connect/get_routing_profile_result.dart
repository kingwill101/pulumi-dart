// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routing_profile_media_concurrency.dart';
import 'get_routing_profile_queue_config.dart';

/// Result data returned by getRoutingProfile.
class GetRoutingProfileResult {
  /// ARN of the Routing Profile.
  final String arn;
  /// Specifies the default outbound queue for the Routing Profile.
  final String defaultOutboundQueueId;
  /// Description of the Routing Profile.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  /// One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  final List<GetRoutingProfileMediaConcurrency> mediaConcurrencies;
  final String name;
  /// One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  final List<GetRoutingProfileQueueConfig> queueConfigs;
  final String region;
  final String routingProfileId;
  /// Map of tags to assign to the Routing Profile.
  final Map<String, String> tags;

  /// Creates a new [GetRoutingProfileResult].
  /// [arn] ARN of the Routing Profile.
  /// [defaultOutboundQueueId] Specifies the default outbound queue for the Routing Profile.
  /// [description] Description of the Routing Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [mediaConcurrencies] One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  /// [name] Required.
  /// [queueConfigs] One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  /// [region] Required.
  /// [routingProfileId] Required.
  /// [tags] Map of tags to assign to the Routing Profile.
  const GetRoutingProfileResult({
    required this.arn,
    required this.defaultOutboundQueueId,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.mediaConcurrencies,
    required this.name,
    required this.queueConfigs,
    required this.region,
    required this.routingProfileId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'defaultOutboundQueueId': defaultOutboundQueueId,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'mediaConcurrencies': pulumi.Input.encodeList<GetRoutingProfileMediaConcurrency, Map<String, dynamic>>(mediaConcurrencies, (value) => value.toMap()),
      'name': name,
      'queueConfigs': pulumi.Input.encodeList<GetRoutingProfileQueueConfig, Map<String, dynamic>>(queueConfigs, (value) => value.toMap()),
      'region': region,
      'routingProfileId': routingProfileId,
      'tags': tags,
    };
  }

  factory GetRoutingProfileResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileResult(
      arn: map['arn'] as String,
      defaultOutboundQueueId: map['defaultOutboundQueueId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      mediaConcurrencies: pulumi.Input.decodeList<GetRoutingProfileMediaConcurrency>(map['mediaConcurrencies']!, (value) => GetRoutingProfileMediaConcurrency.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      queueConfigs: pulumi.Input.decodeList<GetRoutingProfileQueueConfig>(map['queueConfigs']!, (value) => GetRoutingProfileQueueConfig.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      routingProfileId: map['routingProfileId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

