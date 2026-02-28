// ignore_for_file: unused_element, unnecessary_cast

import 'channel_namespace_handler_configs_on_publish_integration.dart';

class ChannelNamespaceHandlerConfigsOnPublish {
  /// Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  final String behavior;
  /// Integration data source configuration for the handler. See Integration below.
  final ChannelNamespaceHandlerConfigsOnPublishIntegration integration;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnPublish].
  /// [behavior] Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  /// [integration] Integration data source configuration for the handler. See Integration below.
  ChannelNamespaceHandlerConfigsOnPublish({
    required this.behavior,
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'integration': integration.toMap(),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnPublish.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublish(
      behavior: map['behavior'] as String,
      integration: ChannelNamespaceHandlerConfigsOnPublishIntegration.fromMap((map['integration'] as Map).cast<String, dynamic>()),
    );
  }
}

