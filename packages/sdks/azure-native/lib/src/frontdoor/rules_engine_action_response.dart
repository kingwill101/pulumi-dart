// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration_response.dart';
import 'header_action_response.dart';

/// One or more actions that will execute, modifying the request and/or response.
class RulesEngineActionResponse {
  /// A list of header actions to apply from the request from AFD to the origin.
  final List<HeaderActionResponse>? requestHeaderActions;
  /// A list of header actions to apply from the response from AFD to the client.
  final List<HeaderActionResponse>? responseHeaderActions;
  /// Override the route configuration.
  final ForwardingConfigurationResponse? routeConfigurationOverride;

  /// Creates a new [RulesEngineActionResponse].
  /// [requestHeaderActions] A list of header actions to apply from the request from AFD to the origin.
  /// [responseHeaderActions] A list of header actions to apply from the response from AFD to the client.
  /// [routeConfigurationOverride] Override the route configuration.
  RulesEngineActionResponse({
    this.requestHeaderActions,
    this.responseHeaderActions,
    this.routeConfigurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderActions': ?requestHeaderActions == null ? null : pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(requestHeaderActions!, (value) => value.toMap()),
      'responseHeaderActions': ?responseHeaderActions == null ? null : pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(responseHeaderActions!, (value) => value.toMap()),
      'routeConfigurationOverride': ?routeConfigurationOverride == null ? null : routeConfigurationOverride!.toMap(),
    };
  }

  factory RulesEngineActionResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineActionResponse(
      requestHeaderActions: map['requestHeaderActions'] == null ? null : pulumi.Input.decodeList<HeaderActionResponse>(map['requestHeaderActions'], (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderActions: map['responseHeaderActions'] == null ? null : pulumi.Input.decodeList<HeaderActionResponse>(map['responseHeaderActions'], (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      routeConfigurationOverride: map['routeConfigurationOverride'] == null ? null : ForwardingConfigurationResponse.fromMap((map['routeConfigurationOverride'] as Map).cast<String, dynamic>()),
    );
  }
}

