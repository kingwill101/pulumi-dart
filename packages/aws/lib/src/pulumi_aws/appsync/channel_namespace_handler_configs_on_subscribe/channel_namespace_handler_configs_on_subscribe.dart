// ignore_for_file: unused_element, unnecessary_cast

import '../channel_namespace_handler_configs_on_subscribe_integration/channel_namespace_handler_configs_on_subscribe_integration.dart';

class ChannelNamespaceHandlerConfigsOnSubscribe {
  /// Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  final String behavior;

  /// Integration data source configuration for the handler. See Integration below.
  final ChannelNamespaceHandlerConfigsOnSubscribeIntegration integration;

  ChannelNamespaceHandlerConfigsOnSubscribe({
    required this.behavior,
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    map['integration'] = integration.toMap();
    return map;
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribe.fromMap(
      Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnSubscribe(
      behavior: map['behavior'] as String,
      integration: ChannelNamespaceHandlerConfigsOnSubscribeIntegration.fromMap(
          (map['integration'] as Map).cast<String, dynamic>()),
    );
  }
}
