// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_profile_media_concurrency.dart';
import 'routing_profile_queue_config.dart';

/// Input properties used for looking up and filtering RoutingProfile resources.
class RoutingProfileState {
  /// Amazon Resource Name (ARN) of the Routing Profile.
  final pulumi.Input<String>? arn;
  /// Specifies the default outbound queue for the Routing Profile.
  final pulumi.Input<String>? defaultOutboundQueueId;
  /// Specifies the description of the Routing Profile.
  final pulumi.Input<String>? description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  final pulumi.Input<List<RoutingProfileMediaConcurrency>>? mediaConcurrencies;
  /// Specifies the name of the Routing Profile.
  final pulumi.Input<String>? name;
  /// One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  final pulumi.Input<List<RoutingProfileQueueConfig>>? queueConfigs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier for the Routing Profile.
  final pulumi.Input<String>? routingProfileId;
  /// Tags to apply to the Routing Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RoutingProfileState].
  /// [arn] Amazon Resource Name (ARN) of the Routing Profile.
  /// [defaultOutboundQueueId] Specifies the default outbound queue for the Routing Profile.
  /// [description] Specifies the description of the Routing Profile.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [mediaConcurrencies] One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  /// [name] Specifies the name of the Routing Profile.
  /// [queueConfigs] One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingProfileId] Identifier for the Routing Profile.
  /// [tags] Tags to apply to the Routing Profile. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RoutingProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultOutboundQueueId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<RoutingProfileMediaConcurrency>>? mediaConcurrencies,
    pulumi.Output<String>? name,
    pulumi.Output<List<RoutingProfileQueueConfig>>? queueConfigs,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routingProfileId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultOutboundQueueId = pulumi.Input.asOptionalInput<String>(defaultOutboundQueueId),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      mediaConcurrencies = pulumi.Input.asOptionalInput<List<RoutingProfileMediaConcurrency>>(mediaConcurrencies),
      name = pulumi.Input.asOptionalInput<String>(name),
      queueConfigs = pulumi.Input.asOptionalInput<List<RoutingProfileQueueConfig>>(queueConfigs),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingProfileId = pulumi.Input.asOptionalInput<String>(routingProfileId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultOutboundQueueId': ?defaultOutboundQueueId,
      'description': ?description,
      'instanceId': ?instanceId,
      'mediaConcurrencies': ?pulumi.Input.mapOptionalInputValue<List<RoutingProfileMediaConcurrency>, List<Map<String, dynamic>>>(mediaConcurrencies, (value) => pulumi.Input.encodeList<RoutingProfileMediaConcurrency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'queueConfigs': ?pulumi.Input.mapOptionalInputValue<List<RoutingProfileQueueConfig>, List<Map<String, dynamic>>>(queueConfigs, (value) => pulumi.Input.encodeList<RoutingProfileQueueConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'routingProfileId': ?routingProfileId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RoutingProfileState.fromMap(Map<String, dynamic> map) {
    return RoutingProfileState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultOutboundQueueId: map['defaultOutboundQueueId'] == null ? null : pulumi.Output.create<String>(map['defaultOutboundQueueId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      mediaConcurrencies: map['mediaConcurrencies'] == null ? null : pulumi.Output.create<List<RoutingProfileMediaConcurrency>>(pulumi.Input.decodeList<RoutingProfileMediaConcurrency>(map['mediaConcurrencies'], (value) => RoutingProfileMediaConcurrency.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queueConfigs: map['queueConfigs'] == null ? null : pulumi.Output.create<List<RoutingProfileQueueConfig>>(pulumi.Input.decodeList<RoutingProfileQueueConfig>(map['queueConfigs'], (value) => RoutingProfileQueueConfig.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingProfileId: map['routingProfileId'] == null ? null : pulumi.Output.create<String>(map['routingProfileId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

