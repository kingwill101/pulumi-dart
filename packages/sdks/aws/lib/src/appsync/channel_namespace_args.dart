// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs.dart';
import 'channel_namespace_publish_auth_mode.dart';
import 'channel_namespace_subscribe_auth_mode.dart';

/// {@template pulumi_appsync_channel_namespace_channel_namespace_args_doc}
/// The set of arguments for ChannelNamespace.
/// {@endtemplate}
/// {@macro pulumi_appsync_channel_namespace_channel_namespace_args_doc}
class ChannelNamespaceArgs {
  /// Event API ID.
  final pulumi.Input<String> apiId;
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

  /// Creates a new [ChannelNamespaceArgs].
  /// [apiId] Event API ID.
  /// [codeHandlers] Event handler functions that run custom business logic to process published events and subscribe requests.
  /// [handlerConfigs] Configuration for the `on_publish` and `on_subscribe` handlers. See Handler Configs below.
  /// [name] Name of the channel namespace.
  /// [publishAuthModes] Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscribeAuthModes] Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ChannelNamespaceArgs({
    required this.apiId,
    this.codeHandlers,
    this.handlerConfigs,
    this.name,
    this.publishAuthModes,
    this.region,
    this.subscribeAuthModes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'codeHandlers': ?codeHandlers,
      'handlerConfigs': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigs, Map<String, dynamic>>(handlerConfigs, (value) => value.toMap()),
      'name': ?name,
      'publishAuthModes': ?pulumi.Input.mapOptionalInputValue<List<ChannelNamespacePublishAuthMode>, List<Map<String, dynamic>>>(publishAuthModes, (value) => pulumi.Input.encodeList<ChannelNamespacePublishAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'subscribeAuthModes': ?pulumi.Input.mapOptionalInputValue<List<ChannelNamespaceSubscribeAuthMode>, List<Map<String, dynamic>>>(subscribeAuthModes, (value) => pulumi.Input.encodeList<ChannelNamespaceSubscribeAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ChannelNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceArgs(
      apiId: (map['apiId'] as String).input(),
      codeHandlers: map['codeHandlers'] == null ? null : ((map['codeHandlers'] as String).input()).input(),
      handlerConfigs: map['handlerConfigs'] == null ? null : ((ChannelNamespaceHandlerConfigs.fromMap((map['handlerConfigs']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      publishAuthModes: map['publishAuthModes'] == null ? null : ((pulumi.Input.decodeList<ChannelNamespacePublishAuthMode>(map['publishAuthModes']!, (value) => ChannelNamespacePublishAuthMode.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subscribeAuthModes: map['subscribeAuthModes'] == null ? null : ((pulumi.Input.decodeList<ChannelNamespaceSubscribeAuthMode>(map['subscribeAuthModes']!, (value) => ChannelNamespaceSubscribeAuthMode.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

