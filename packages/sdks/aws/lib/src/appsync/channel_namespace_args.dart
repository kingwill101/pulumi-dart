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
  final pulumi.Input<String?>? codeHandlers;
  /// Configuration for the `onPublish` and `onSubscribe` handlers. See `handlerConfigs` below.
  final pulumi.Input<ChannelNamespaceHandlerConfigs?>? handlerConfigs;
  /// Name of the channel namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See `publishAuthMode` below.
  final pulumi.Input<List<ChannelNamespacePublishAuthMode>?>? publishAuthModes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See `subscribeAuthMode` below.
  final pulumi.Input<List<ChannelNamespaceSubscribeAuthMode>?>? subscribeAuthModes;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ChannelNamespaceArgs].
  /// [apiId] Event API ID.
  /// [codeHandlers] Event handler functions that run custom business logic to process published events and subscribe requests.
  /// [handlerConfigs] Configuration for the `onPublish` and `onSubscribe` handlers. See `handlerConfigs` below.
  /// [name] Name of the channel namespace.
  /// [publishAuthModes] Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See `publishAuthMode` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscribeAuthModes] Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See `subscribeAuthMode` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ChannelNamespaceArgs({
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
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      codeHandlers: (() { final guardedValue = map['codeHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handlerConfigs: (() { final guardedValue = map['handlerConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelNamespaceHandlerConfigs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishAuthModes: (() { final guardedValue = map['publishAuthModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelNamespacePublishAuthMode>(guardedValue, (value) => ChannelNamespacePublishAuthMode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribeAuthModes: (() { final guardedValue = map['subscribeAuthModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelNamespaceSubscribeAuthMode>(guardedValue, (value) => ChannelNamespaceSubscribeAuthMode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
