// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration.dart';
import 'header_action.dart';

/// One or more actions that will execute, modifying the request and/or response.
class RulesEngineAction {
  /// A list of header actions to apply from the request from AFD to the origin.
  final pulumi.Input<List<HeaderAction>>? requestHeaderActions;

  /// A list of header actions to apply from the response from AFD to the client.
  final pulumi.Input<List<HeaderAction>>? responseHeaderActions;

  /// Override the route configuration.
  final pulumi.Input<ForwardingConfiguration>? routeConfigurationOverride;

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
      'requestHeaderActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<HeaderAction>,
            List<Map<String, dynamic>>
          >(
            requestHeaderActions,
            (value) =>
                pulumi.Input.encodeList<HeaderAction, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'responseHeaderActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<HeaderAction>,
            List<Map<String, dynamic>>
          >(
            responseHeaderActions,
            (value) =>
                pulumi.Input.encodeList<HeaderAction, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'routeConfigurationOverride':
          ?pulumi.Input.mapOptionalInputValue<
            ForwardingConfiguration,
            Map<String, dynamic>
          >(routeConfigurationOverride, (value) => value.toMap()),
    };
  }

  factory RulesEngineAction.fromMap(Map<String, dynamic> map) {
    return RulesEngineAction(
      requestHeaderActions: (() {
        final guardedValue = map['requestHeaderActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HeaderAction>(
            guardedValue,
            (value) =>
                HeaderAction.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      responseHeaderActions: (() {
        final guardedValue = map['responseHeaderActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HeaderAction>(
            guardedValue,
            (value) =>
                HeaderAction.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      routeConfigurationOverride: (() {
        final guardedValue = map['routeConfigurationOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ForwardingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
