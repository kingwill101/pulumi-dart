// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../routing_profile_media_concurrency/routing_profile_media_concurrency.dart';
import '../routing_profile_queue_config/routing_profile_queue_config.dart';

/// The set of arguments for RoutingProfile.
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
    final map = <String, dynamic>{};
    map['defaultOutboundQueueId'] = defaultOutboundQueueId;
    map['description'] = description;
    map['instanceId'] = instanceId;
    map['mediaConcurrencies'] = pulumi.Input.mapInputValue<
            List<RoutingProfileMediaConcurrency>, List<Map<String, dynamic>>>(
        mediaConcurrencies,
        (value) => pulumi.Input.encodeList<RoutingProfileMediaConcurrency,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final queueConfigsValue = queueConfigs;
    if (queueConfigsValue != null) {
      map['queueConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<RoutingProfileQueueConfig>, List<Map<String, dynamic>>>(
          queueConfigsValue,
          (value) => pulumi.Input.encodeList<RoutingProfileQueueConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RoutingProfileArgs.fromMap(Map<String, dynamic> map) {
    return RoutingProfileArgs(
      defaultOutboundQueueId:
          pulumi.Input.asInput<String>(map['defaultOutboundQueueId']),
      description: pulumi.Input.asInput<String>(map['description']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      mediaConcurrencies:
          pulumi.Input.asInput<List<RoutingProfileMediaConcurrency>>(
              map['mediaConcurrencies']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queueConfigs:
          pulumi.Input.asOptionalInput<List<RoutingProfileQueueConfig>>(
              map['queueConfigs']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
