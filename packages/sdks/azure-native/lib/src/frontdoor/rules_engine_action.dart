// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration.dart';
import 'header_action.dart';

/// One or more actions that will execute, modifying the request and/or response.
class RulesEngineAction {
  /// A list of header actions to apply from the request from AFD to the origin.
  final List<HeaderAction>? requestHeaderActions;
  /// A list of header actions to apply from the response from AFD to the client.
  final List<HeaderAction>? responseHeaderActions;
  /// Override the route configuration.
  final ForwardingConfiguration? routeConfigurationOverride;

  /// Creates a new [RulesEngineAction].
  /// [requestHeaderActions] A list of header actions to apply from the request from AFD to the origin.
  /// [responseHeaderActions] A list of header actions to apply from the response from AFD to the client.
  /// [routeConfigurationOverride] Override the route configuration.
  RulesEngineAction({
    this.requestHeaderActions,
    this.responseHeaderActions,
    this.routeConfigurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderActions': ?requestHeaderActions == null ? null : pulumi.Input.encodeList<HeaderAction, Map<String, dynamic>>(requestHeaderActions!, (value) => value.toMap()),
      'responseHeaderActions': ?responseHeaderActions == null ? null : pulumi.Input.encodeList<HeaderAction, Map<String, dynamic>>(responseHeaderActions!, (value) => value.toMap()),
      'routeConfigurationOverride': ?routeConfigurationOverride == null ? null : routeConfigurationOverride!.toMap(),
    };
  }

  factory RulesEngineAction.fromMap(Map<String, dynamic> map) {
    return RulesEngineAction(
      requestHeaderActions: map['requestHeaderActions'] == null ? null : pulumi.Input.decodeList<HeaderAction>(map['requestHeaderActions'], (value) => HeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderActions: map['responseHeaderActions'] == null ? null : pulumi.Input.decodeList<HeaderAction>(map['responseHeaderActions'], (value) => HeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      routeConfigurationOverride: map['routeConfigurationOverride'] == null ? null : ForwardingConfiguration.fromMap((map['routeConfigurationOverride'] as Map).cast<String, dynamic>()),
    );
  }
}

