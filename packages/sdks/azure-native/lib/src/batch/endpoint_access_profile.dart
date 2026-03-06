// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_default_action.dart';
import 'iprule.dart';

/// Network access profile for Batch endpoint.
class EndpointAccessProfile {
  /// Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  final pulumi.Input<EndpointAccessDefaultAction> defaultAction;
  /// Array of IP ranges to filter client IP address.
  final pulumi.Input<List<IPRule>>? ipRules;

  /// Creates a new [EndpointAccessProfile].
  /// [defaultAction] Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  /// [ipRules] Array of IP ranges to filter client IP address.
  const EndpointAccessProfile({
    required this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': pulumi.Input.mapInputValue<EndpointAccessDefaultAction, String>(defaultAction, (value) => value.wireValue),
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointAccessProfile.fromMap(Map<String, dynamic> map) {
    return EndpointAccessProfile(
      defaultAction: pulumi.Input.fromValue(EndpointAccessDefaultAction.fromValue(map['defaultAction']! as String)),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRule>(guardedValue, (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

