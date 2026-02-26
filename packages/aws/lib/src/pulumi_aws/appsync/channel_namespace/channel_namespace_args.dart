// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_namespace_handler_configs/channel_namespace_handler_configs.dart';
import '../channel_namespace_publish_auth_mode/channel_namespace_publish_auth_mode.dart';
import '../channel_namespace_subscribe_auth_mode/channel_namespace_subscribe_auth_mode.dart';

/// The set of arguments for ChannelNamespace.
class ChannelNamespaceArgs {
  /// Event API ID.
  final Input<String> apiId;

  /// Event handler functions that run custom business logic to process published events and subscribe requests.
  final Input<String>? codeHandlers;

  /// Configuration for the <span pulumi-lang-nodejs="`onPublish`" pulumi-lang-dotnet="`OnPublish`" pulumi-lang-go="`onPublish`" pulumi-lang-python="`on_publish`" pulumi-lang-yaml="`onPublish`" pulumi-lang-java="`onPublish`">`on_publish`</span> and <span pulumi-lang-nodejs="`onSubscribe`" pulumi-lang-dotnet="`OnSubscribe`" pulumi-lang-go="`onSubscribe`" pulumi-lang-python="`on_subscribe`" pulumi-lang-yaml="`onSubscribe`" pulumi-lang-java="`onSubscribe`">`on_subscribe`</span> handlers. See Handler Configs below.
  final Input<ChannelNamespaceHandlerConfigs>? handlerConfigs;

  /// Name of the channel namespace.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  final Input<List<ChannelNamespacePublishAuthMode>>? publishAuthModes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  final Input<List<ChannelNamespaceSubscribeAuthMode>>? subscribeAuthModes;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['handlerConfigs'] = Input.mapOptionalInputValue<
          ChannelNamespaceHandlerConfigs,
          Map<String, dynamic>>(handlerConfigsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final publishAuthModesValue = publishAuthModes;
    if (publishAuthModesValue != null) {
      map['publishAuthModes'] = Input.mapOptionalInputValue<
              List<ChannelNamespacePublishAuthMode>,
              List<Map<String, dynamic>>>(
          publishAuthModesValue,
          (value) => Input.encodeList<ChannelNamespacePublishAuthMode,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subscribeAuthModesValue = subscribeAuthModes;
    if (subscribeAuthModesValue != null) {
      map['subscribeAuthModes'] = Input.mapOptionalInputValue<
              List<ChannelNamespaceSubscribeAuthMode>,
              List<Map<String, dynamic>>>(
          subscribeAuthModesValue,
          (value) => Input.encodeList<ChannelNamespaceSubscribeAuthMode,
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
      apiId: Input.asInput<String>(map['apiId']),
      codeHandlers: Input.asOptionalInput<String>(map['codeHandlers']),
      handlerConfigs: Input.asOptionalInput<ChannelNamespaceHandlerConfigs>(
          map['handlerConfigs']),
      name: Input.asOptionalInput<String>(map['name']),
      publishAuthModes:
          Input.asOptionalInput<List<ChannelNamespacePublishAuthMode>>(
              map['publishAuthModes']),
      region: Input.asOptionalInput<String>(map['region']),
      subscribeAuthModes:
          Input.asOptionalInput<List<ChannelNamespaceSubscribeAuthMode>>(
              map['subscribeAuthModes']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
