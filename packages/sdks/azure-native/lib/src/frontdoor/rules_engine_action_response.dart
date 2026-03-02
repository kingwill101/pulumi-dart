// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration_response.dart';
import 'header_action_response.dart';

/// One or more actions that will execute, modifying the request and/or response.
class RulesEngineActionResponse {
  /// A list of header actions to apply from the request from AFD to the origin.
  final pulumi.Input<List<HeaderActionResponse>>? requestHeaderActions;
  /// A list of header actions to apply from the response from AFD to the client.
  final pulumi.Input<List<HeaderActionResponse>>? responseHeaderActions;
  /// Override the route configuration.
  final pulumi.Input<ForwardingConfigurationResponse>? routeConfigurationOverride;

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
      'requestHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<HeaderActionResponse>, List<Map<String, dynamic>>>(requestHeaderActions, (value) => pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<HeaderActionResponse>, List<Map<String, dynamic>>>(responseHeaderActions, (value) => pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeConfigurationOverride': ?pulumi.Input.mapOptionalInputValue<ForwardingConfigurationResponse, Map<String, dynamic>>(routeConfigurationOverride, (value) => value.toMap()),
    };
  }

  factory RulesEngineActionResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineActionResponse(
      requestHeaderActions: map['requestHeaderActions'] == null ? null : (pulumi.Input.decodeList<HeaderActionResponse>(map['requestHeaderActions'], (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseHeaderActions: map['responseHeaderActions'] == null ? null : (pulumi.Input.decodeList<HeaderActionResponse>(map['responseHeaderActions'], (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routeConfigurationOverride: map['routeConfigurationOverride'] == null ? null : (ForwardingConfigurationResponse.fromMap((map['routeConfigurationOverride'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

