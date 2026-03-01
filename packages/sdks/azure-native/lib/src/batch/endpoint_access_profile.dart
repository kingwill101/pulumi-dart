// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_default_action.dart';
import 'iprule.dart';

/// Network access profile for Batch endpoint.
class EndpointAccessProfile {
  /// Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  final EndpointAccessDefaultAction defaultAction;
  /// Array of IP ranges to filter client IP address.
  final List<IPRule>? ipRules;

  /// Creates a new [EndpointAccessProfile].
  /// [defaultAction] Default action for endpoint access. It is only applicable when publicNetworkAccess is enabled.
  /// [ipRules] Array of IP ranges to filter client IP address.
  EndpointAccessProfile({
    required this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction.value,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory EndpointAccessProfile.fromMap(Map<String, dynamic> map) {
    return EndpointAccessProfile(
      defaultAction: EndpointAccessDefaultAction.fromValue(map['defaultAction'] as String),
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

