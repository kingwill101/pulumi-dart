// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_publish.dart';
import 'channel_namespace_handler_configs_on_subscribe.dart';

class ChannelNamespaceHandlerConfigs {
  /// Handler configuration. See Handler Config below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnPublish>? onPublish;
  /// Handler configuration. See Handler Config below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnSubscribe>? onSubscribe;

  /// Creates a new [ChannelNamespaceHandlerConfigs].
  /// [onPublish] Handler configuration. See Handler Config below.
  /// [onSubscribe] Handler configuration. See Handler Config below.
  ChannelNamespaceHandlerConfigs({
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
      onPublish: map['onPublish'] == null ? null : (ChannelNamespaceHandlerConfigsOnPublish.fromMap((map['onPublish'] as Map).cast<String, dynamic>())).input(),
      onSubscribe: map['onSubscribe'] == null ? null : (ChannelNamespaceHandlerConfigsOnSubscribe.fromMap((map['onSubscribe'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

