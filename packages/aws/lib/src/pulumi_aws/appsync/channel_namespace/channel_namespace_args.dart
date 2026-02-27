// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_namespace_handler_configs/channel_namespace_handler_configs.dart';
import '../channel_namespace_publish_auth_mode/channel_namespace_publish_auth_mode.dart';
import '../channel_namespace_subscribe_auth_mode/channel_namespace_subscribe_auth_mode.dart';

/// The set of arguments for ChannelNamespace.
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
  final pulumi.Input<List<ChannelNamespaceSubscribeAuthMode>>?
      subscribeAuthModes;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final codeHandlersValue = codeHandlers;
    if (codeHandlersValue != null) {
      map['codeHandlers'] = codeHandlersValue;
    }
    final handlerConfigsValue = handlerConfigs;
    if (handlerConfigsValue != null) {
      map['handlerConfigs'] = pulumi.Input.mapOptionalInputValue<
          ChannelNamespaceHandlerConfigs,
          Map<String, dynamic>>(handlerConfigsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final publishAuthModesValue = publishAuthModes;
    if (publishAuthModesValue != null) {
      map['publishAuthModes'] = pulumi.Input.mapOptionalInputValue<
              List<ChannelNamespacePublishAuthMode>,
              List<Map<String, dynamic>>>(
          publishAuthModesValue,
          (value) => pulumi.Input.encodeList<ChannelNamespacePublishAuthMode,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subscribeAuthModesValue = subscribeAuthModes;
    if (subscribeAuthModesValue != null) {
      map['subscribeAuthModes'] = pulumi.Input.mapOptionalInputValue<
              List<ChannelNamespaceSubscribeAuthMode>,
              List<Map<String, dynamic>>>(
          subscribeAuthModesValue,
          (value) => pulumi.Input.encodeList<ChannelNamespaceSubscribeAuthMode,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ChannelNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      codeHandlers: pulumi.Input.asOptionalInput<String>(map['codeHandlers']),
      handlerConfigs:
          pulumi.Input.asOptionalInput<ChannelNamespaceHandlerConfigs>(
              map['handlerConfigs']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      publishAuthModes:
          pulumi.Input.asOptionalInput<List<ChannelNamespacePublishAuthMode>>(
              map['publishAuthModes']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subscribeAuthModes:
          pulumi.Input.asOptionalInput<List<ChannelNamespaceSubscribeAuthMode>>(
              map['subscribeAuthModes']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
