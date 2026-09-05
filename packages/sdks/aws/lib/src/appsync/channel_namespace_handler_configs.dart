// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_publish.dart';
import 'channel_namespace_handler_configs_on_subscribe.dart';

class ChannelNamespaceHandlerConfigs {
  /// Handler configuration for published events. See `onPublish` below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnPublish?>? onPublish;
  /// Handler configuration for subscribe requests. See `onSubscribe` below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnSubscribe?>? onSubscribe;

  /// Creates a new [ChannelNamespaceHandlerConfigs].
  /// [onPublish] Handler configuration for published events. See `onPublish` below.
  /// [onSubscribe] Handler configuration for subscribe requests. See `onSubscribe` below.
  const ChannelNamespaceHandlerConfigs({
    this.onPublish,
    this.onSubscribe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onPublish': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigsOnPublish, Map<String, dynamic>>(onPublish, (value) => value.toMap()),
      'onSubscribe': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigsOnSubscribe, Map<String, dynamic>>(onSubscribe, (value) => value.toMap()),
    };
  }

  factory ChannelNamespaceHandlerConfigs.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigs(
      onPublish: (() { final guardedValue = map['onPublish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelNamespaceHandlerConfigsOnPublish.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onSubscribe: (() { final guardedValue = map['onSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelNamespaceHandlerConfigsOnSubscribe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
