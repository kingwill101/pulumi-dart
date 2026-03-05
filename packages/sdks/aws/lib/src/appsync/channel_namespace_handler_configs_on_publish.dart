// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_publish_integration.dart';

class ChannelNamespaceHandlerConfigsOnPublish {
  /// Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  final pulumi.Input<String> behavior;
  /// Integration data source configuration for the handler. See Integration below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnPublishIntegration> integration;

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
      'integration': pulumi.Input.mapInputValue<ChannelNamespaceHandlerConfigsOnPublishIntegration, Map<String, dynamic>>(integration, (value) => value.toMap()),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnPublish.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublish(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      integration: pulumi.Input.fromValue(ChannelNamespaceHandlerConfigsOnPublishIntegration.fromMap((map['integration']! as Map).cast<String, dynamic>())),
    );
  }
}

