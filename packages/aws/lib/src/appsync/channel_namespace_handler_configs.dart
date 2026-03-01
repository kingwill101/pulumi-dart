// ignore_for_file: unused_element, unnecessary_cast

import 'channel_namespace_handler_configs_on_publish.dart';
import 'channel_namespace_handler_configs_on_subscribe.dart';

class ChannelNamespaceHandlerConfigs {
  /// Handler configuration. See Handler Config below.
  final ChannelNamespaceHandlerConfigsOnPublish? onPublish;

  /// Handler configuration. See Handler Config below.
  final ChannelNamespaceHandlerConfigsOnSubscribe? onSubscribe;

  /// Creates a new [ChannelNamespaceHandlerConfigs].
  /// [onPublish] Handler configuration. See Handler Config below.
  /// [onSubscribe] Handler configuration. See Handler Config below.
  ChannelNamespaceHandlerConfigs({this.onPublish, this.onSubscribe});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onPublish': ?onPublish == null ? null : onPublish!.toMap(),
      'onSubscribe': ?onSubscribe == null ? null : onSubscribe!.toMap(),
    };
  }

  factory ChannelNamespaceHandlerConfigs.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigs(
      onPublish: map['onPublish'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnPublish.fromMap(
              (map['onPublish'] as Map).cast<String, dynamic>(),
            ),
      onSubscribe: map['onSubscribe'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnSubscribe.fromMap(
              (map['onSubscribe'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
