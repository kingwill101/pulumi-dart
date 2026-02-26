// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../config_blocking_functions_forward_inbound_credentials/config_blocking_functions_forward_inbound_credentials.dart';
import '../config_blocking_functions_trigger/config_blocking_functions_trigger.dart';

class ConfigBlockingFunctions {
  /// The user credentials to include in the JWT payload that is sent to the registered Blocking Functions.
  /// Structure is documented below.
  final ConfigBlockingFunctionsForwardInboundCredentials?
      forwardInboundCredentials;

  /// Map of Trigger to event type. Key should be one of the supported event types: "beforeCreate", "beforeSignIn".
  /// Structure is documented below.
  final List<ConfigBlockingFunctionsTrigger> triggers;

  ConfigBlockingFunctions({
    this.forwardInboundCredentials,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forwardInboundCredentialsValue = forwardInboundCredentials;
    if (forwardInboundCredentialsValue != null) {
      map['forwardInboundCredentials'] = forwardInboundCredentialsValue.toMap();
    }
    map['triggers'] =
        Input.encodeList<ConfigBlockingFunctionsTrigger, Map<String, dynamic>>(
            triggers, (value) => value.toMap());
    return map;
  }

  factory ConfigBlockingFunctions.fromMap(Map<String, dynamic> map) {
    return ConfigBlockingFunctions(
      forwardInboundCredentials: map['forwardInboundCredentials'] == null
          ? null
          : ConfigBlockingFunctionsForwardInboundCredentials.fromMap(
              (map['forwardInboundCredentials'] as Map)
                  .cast<String, dynamic>()),
      triggers: Input.decodeList<ConfigBlockingFunctionsTrigger>(
          map['triggers'],
          (value) => ConfigBlockingFunctionsTrigger.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
