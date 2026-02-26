// ignore_for_file: unused_element, unnecessary_cast

import '../channel_namespace_handler_configs_on_publish/channel_namespace_handler_configs_on_publish.dart';
import '../channel_namespace_handler_configs_on_subscribe/channel_namespace_handler_configs_on_subscribe.dart';

class ChannelNamespaceHandlerConfigs {
  /// Handler configuration. See Handler Config below.
  final ChannelNamespaceHandlerConfigsOnPublish? onPublish;

  /// Handler configuration. See Handler Config below.
  final ChannelNamespaceHandlerConfigsOnSubscribe? onSubscribe;

  ChannelNamespaceHandlerConfigs({
    this.onPublish,
    this.onSubscribe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onPublishValue = onPublish;
    if (onPublishValue != null) {
      map['onPublish'] = onPublishValue.toMap();
    }
    final onSubscribeValue = onSubscribe;
    if (onSubscribeValue != null) {
      map['onSubscribe'] = onSubscribeValue.toMap();
    }
    return map;
  }

  factory ChannelNamespaceHandlerConfigs.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigs(
      onPublish: map['onPublish'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnPublish.fromMap(
              (map['onPublish'] as Map).cast<String, dynamic>()),
      onSubscribe: map['onSubscribe'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnSubscribe.fromMap(
              (map['onSubscribe'] as Map).cast<String, dynamic>()),
    );
  }
}
