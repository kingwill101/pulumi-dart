// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_subscribe_integration.dart';

class ChannelNamespaceHandlerConfigsOnSubscribe {
  /// Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  final pulumi.Input<String> behavior;
  /// Integration data source configuration for the handler. See `integration` below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnSubscribeIntegration> integration;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnSubscribe].
  /// [behavior] Behavior for the handler. Valid values: `CODE`, `DIRECT`.
  /// [integration] Integration data source configuration for the handler. See `integration` below.
  const ChannelNamespaceHandlerConfigsOnSubscribe({
    required this.behavior,
    required this.integration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'integration': pulumi.Input.mapInputValue<ChannelNamespaceHandlerConfigsOnSubscribeIntegration, Map<String, dynamic>>(integration, (value) => value.toMap()),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribe.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnSubscribe(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
      integration: pulumi.Input.fromValue(ChannelNamespaceHandlerConfigsOnSubscribeIntegration.fromMap((map['integration']! as Map).cast<String, dynamic>())),
    );
  }
}
