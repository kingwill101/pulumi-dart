// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs.dart';
import 'channel_namespace_publish_auth_mode.dart';
import 'channel_namespace_subscribe_auth_mode.dart';

/// Input properties used for looking up and filtering ChannelNamespace resources.
class ChannelNamespaceState {
  /// Event API ID.
  final pulumi.Input<String>? apiId;
  /// ARN of the channel namespace.
  final pulumi.Input<String>? channelNamespaceArn;
  /// Event handler functions that run custom business logic to process published events and subscribe requests.
  final pulumi.Input<String>? codeHandlers;
  /// Configuration for the `on_publish` and `on_subscribe` handlers. See Handler Configs below.
  final pulumi.Input<ChannelNamespaceHandlerConfigs>? handlerConfigs;
  /// Name of the channel namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  final pulumi.Input<List<ChannelNamespacePublishAuthMode>>? publishAuthModes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  final pulumi.Input<List<ChannelNamespaceSubscribeAuthMode>>? subscribeAuthModes;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ChannelNamespaceState].
  /// [apiId] Event API ID.
  /// [channelNamespaceArn] ARN of the channel namespace.
  /// [codeHandlers] Event handler functions that run custom business logic to process published events and subscribe requests.
  /// [handlerConfigs] Configuration for the `on_publish` and `on_subscribe` handlers. See Handler Configs below.
  /// [name] Name of the channel namespace.
  /// [publishAuthModes] Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscribeAuthModes] Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ChannelNamespaceState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? channelNamespaceArn,
    pulumi.Output<String>? codeHandlers,
    pulumi.Output<ChannelNamespaceHandlerConfigs>? handlerConfigs,
    pulumi.Output<String>? name,
    pulumi.Output<List<ChannelNamespacePublishAuthMode>>? publishAuthModes,
    pulumi.Output<String>? region,
    pulumi.Output<List<ChannelNamespaceSubscribeAuthMode>>? subscribeAuthModes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      channelNamespaceArn = pulumi.Input.asOptionalInput<String>(channelNamespaceArn),
      codeHandlers = pulumi.Input.asOptionalInput<String>(codeHandlers),
      handlerConfigs = pulumi.Input.asOptionalInput<ChannelNamespaceHandlerConfigs>(handlerConfigs),
      name = pulumi.Input.asOptionalInput<String>(name),
      publishAuthModes = pulumi.Input.asOptionalInput<List<ChannelNamespacePublishAuthMode>>(publishAuthModes),
      region = pulumi.Input.asOptionalInput<String>(region),
      subscribeAuthModes = pulumi.Input.asOptionalInput<List<ChannelNamespaceSubscribeAuthMode>>(subscribeAuthModes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'channelNamespaceArn': ?channelNamespaceArn,
      'codeHandlers': ?codeHandlers,
      'handlerConfigs': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigs, Map<String, dynamic>>(handlerConfigs, (value) => value.toMap()),
      'name': ?name,
      'publishAuthModes': ?pulumi.Input.mapOptionalInputValue<List<ChannelNamespacePublishAuthMode>, List<Map<String, dynamic>>>(publishAuthModes, (value) => pulumi.Input.encodeList<ChannelNamespacePublishAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'subscribeAuthModes': ?pulumi.Input.mapOptionalInputValue<List<ChannelNamespaceSubscribeAuthMode>, List<Map<String, dynamic>>>(subscribeAuthModes, (value) => pulumi.Input.encodeList<ChannelNamespaceSubscribeAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ChannelNamespaceState.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      channelNamespaceArn: map['channelNamespaceArn'] == null ? null : pulumi.Output.create<String>(map['channelNamespaceArn'] as String),
      codeHandlers: map['codeHandlers'] == null ? null : pulumi.Output.create<String>(map['codeHandlers'] as String),
      handlerConfigs: map['handlerConfigs'] == null ? null : pulumi.Output.create<ChannelNamespaceHandlerConfigs>(ChannelNamespaceHandlerConfigs.fromMap((map['handlerConfigs'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publishAuthModes: map['publishAuthModes'] == null ? null : pulumi.Output.create<List<ChannelNamespacePublishAuthMode>>(pulumi.Input.decodeList<ChannelNamespacePublishAuthMode>(map['publishAuthModes'], (value) => ChannelNamespacePublishAuthMode.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subscribeAuthModes: map['subscribeAuthModes'] == null ? null : pulumi.Output.create<List<ChannelNamespaceSubscribeAuthMode>>(pulumi.Input.decodeList<ChannelNamespaceSubscribeAuthMode>(map['subscribeAuthModes'], (value) => ChannelNamespaceSubscribeAuthMode.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

