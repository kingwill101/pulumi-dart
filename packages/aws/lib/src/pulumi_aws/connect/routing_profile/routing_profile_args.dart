// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../routing_profile_media_concurrency/routing_profile_media_concurrency.dart';
import '../routing_profile_queue_config/routing_profile_queue_config.dart';

/// The set of arguments for RoutingProfile.
class RoutingProfileArgs {
  /// Specifies the default outbound queue for the Routing Profile.
  final Input<String> defaultOutboundQueueId;

  /// Specifies the description of the Routing Profile.
  final Input<String> description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// One or more <span pulumi-lang-nodejs="`mediaConcurrencies`" pulumi-lang-dotnet="`MediaConcurrencies`" pulumi-lang-go="`mediaConcurrencies`" pulumi-lang-python="`media_concurrencies`" pulumi-lang-yaml="`mediaConcurrencies`" pulumi-lang-java="`mediaConcurrencies`">`media_concurrencies`</span> blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The <span pulumi-lang-nodejs="`mediaConcurrencies`" pulumi-lang-dotnet="`MediaConcurrencies`" pulumi-lang-go="`mediaConcurrencies`" pulumi-lang-python="`media_concurrencies`" pulumi-lang-yaml="`mediaConcurrencies`" pulumi-lang-java="`mediaConcurrencies`">`media_concurrencies`</span> block is documented below.
  final Input<List<RoutingProfileMediaConcurrency>> mediaConcurrencies;

  /// Specifies the name of the Routing Profile.
  final Input<String>? name;

  /// One or more <span pulumi-lang-nodejs="`queueConfigs`" pulumi-lang-dotnet="`QueueConfigs`" pulumi-lang-go="`queueConfigs`" pulumi-lang-python="`queue_configs`" pulumi-lang-yaml="`queueConfigs`" pulumi-lang-java="`queueConfigs`">`queue_configs`</span> blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The <span pulumi-lang-nodejs="`queueConfigs`" pulumi-lang-dotnet="`QueueConfigs`" pulumi-lang-go="`queueConfigs`" pulumi-lang-python="`queue_configs`" pulumi-lang-yaml="`queueConfigs`" pulumi-lang-java="`queueConfigs`">`queue_configs`</span> block is documented below.
  final Input<List<RoutingProfileQueueConfig>>? queueConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Routing Profile. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    map['mediaConcurrencies'] = Input.mapInputValue<
            List<RoutingProfileMediaConcurrency>, List<Map<String, dynamic>>>(
        mediaConcurrencies,
        (value) => Input.encodeList<RoutingProfileMediaConcurrency,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final queueConfigsValue = queueConfigs;
    if (queueConfigsValue != null) {
      map['queueConfigs'] = Input.mapOptionalInputValue<
              List<RoutingProfileQueueConfig>, List<Map<String, dynamic>>>(
          queueConfigsValue,
          (value) =>
              Input.encodeList<RoutingProfileQueueConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
          Input.asInput<String>(map['defaultOutboundQueueId']),
      description: Input.asInput<String>(map['description']),
      instanceId: Input.asInput<String>(map['instanceId']),
      mediaConcurrencies: Input.asInput<List<RoutingProfileMediaConcurrency>>(
          map['mediaConcurrencies']),
      name: Input.asOptionalInput<String>(map['name']),
      queueConfigs: Input.asOptionalInput<List<RoutingProfileQueueConfig>>(
          map['queueConfigs']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
