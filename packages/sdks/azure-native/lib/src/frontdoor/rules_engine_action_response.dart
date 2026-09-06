// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_action_response.dart';

/// One or more actions that will execute, modifying the request and/or response.
class RulesEngineActionResponse {
  /// A list of header actions to apply from the request from AFD to the origin.
  final pulumi.Input<List<HeaderActionResponse>?>? requestHeaderActions;
  /// A list of header actions to apply from the response from AFD to the client.
  final pulumi.Input<List<HeaderActionResponse>?>? responseHeaderActions;
  /// Override the route configuration.
  final pulumi.Input<dynamic>? routeConfigurationOverride;

  /// Creates a new [RulesEngineActionResponse].
  /// [requestHeaderActions] A list of header actions to apply from the request from AFD to the origin.
  /// [responseHeaderActions] A list of header actions to apply from the response from AFD to the client.
  /// [routeConfigurationOverride] Override the route configuration.
  const RulesEngineActionResponse({
    this.requestHeaderActions,
    this.responseHeaderActions,
    this.routeConfigurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<HeaderActionResponse>, List<Map<String, dynamic>>>(requestHeaderActions, (value) => pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<HeaderActionResponse>, List<Map<String, dynamic>>>(responseHeaderActions, (value) => pulumi.Input.encodeList<HeaderActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeConfigurationOverride': ?routeConfigurationOverride,
    };
  }

  factory RulesEngineActionResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineActionResponse(
      requestHeaderActions: (() { final guardedValue = map['requestHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderActionResponse>(guardedValue, (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaderActions: (() { final guardedValue = map['responseHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderActionResponse>(guardedValue, (value) => HeaderActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeConfigurationOverride: (() { final guardedValue = map['routeConfigurationOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
