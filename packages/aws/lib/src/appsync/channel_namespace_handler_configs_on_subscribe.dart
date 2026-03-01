// ignore_for_file: unused_element, unnecessary_cast

import 'channel_namespace_handler_configs_on_subscribe_integration.dart';

class ChannelNamespaceHandlerConfigsOnSubscribe {
  /// Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  final String behavior;

  /// Integration data source configuration for the handler. See Integration below.
  final ChannelNamespaceHandlerConfigsOnSubscribeIntegration integration;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnSubscribe].
  /// [behavior] Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  /// [integration] Integration data source configuration for the handler. See Integration below.
  ChannelNamespaceHandlerConfigsOnSubscribe({
    required this.behavior,
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'integration': integration.toMap(),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribe.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelNamespaceHandlerConfigsOnSubscribe(
      behavior: map['behavior'] as String,
      integration: ChannelNamespaceHandlerConfigsOnSubscribeIntegration.fromMap(
        (map['integration'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
