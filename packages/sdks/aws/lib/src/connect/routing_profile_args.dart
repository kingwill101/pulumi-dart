// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_profile_media_concurrency.dart';
import 'routing_profile_queue_config.dart';

/// {@template pulumi_connect_routing_profile_routing_profile_args_doc}
/// The set of arguments for RoutingProfile.
/// {@endtemplate}
/// {@macro pulumi_connect_routing_profile_routing_profile_args_doc}
class RoutingProfileArgs {
  /// Specifies the default outbound queue for the Routing Profile.
  final pulumi.Input<String> defaultOutboundQueueId;
  /// Specifies the description of the Routing Profile.
  final pulumi.Input<String> description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  final pulumi.Input<List<RoutingProfileMediaConcurrency>> mediaConcurrencies;
  /// Specifies the name of the Routing Profile.
  final pulumi.Input<String>? name;
  /// One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  final pulumi.Input<List<RoutingProfileQueueConfig>>? queueConfigs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Routing Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RoutingProfileArgs].
  /// [defaultOutboundQueueId] Specifies the default outbound queue for the Routing Profile.
  /// [description] Specifies the description of the Routing Profile.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [mediaConcurrencies] One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  /// [name] Specifies the name of the Routing Profile.
  /// [queueConfigs] One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Routing Profile. If configured with a provider
  RoutingProfileArgs({
    required this.defaultOutboundQueueId,
    required this.description,
    required this.instanceId,
    required this.mediaConcurrencies,
    this.name,
    this.queueConfigs,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultOutboundQueueId': defaultOutboundQueueId,
      'description': description,
      'instanceId': instanceId,
      'mediaConcurrencies': pulumi.Input.mapInputValue<List<RoutingProfileMediaConcurrency>, List<Map<String, dynamic>>>(mediaConcurrencies, (value) => pulumi.Input.encodeList<RoutingProfileMediaConcurrency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'queueConfigs': ?pulumi.Input.mapOptionalInputValue<List<RoutingProfileQueueConfig>, List<Map<String, dynamic>>>(queueConfigs, (value) => pulumi.Input.encodeList<RoutingProfileQueueConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RoutingProfileArgs.fromMap(Map<String, dynamic> map) {
    return RoutingProfileArgs(
      defaultOutboundQueueId: pulumi.Input.fromValue(map['defaultOutboundQueueId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      mediaConcurrencies: pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingProfileMediaConcurrency>(map['mediaConcurrencies']!, (value) => RoutingProfileMediaConcurrency.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueConfigs: (() { final guardedValue = map['queueConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoutingProfileQueueConfig>(guardedValue, (value) => RoutingProfileQueueConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

