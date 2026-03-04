// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object for an IP range that will be allowed access.
class NetworkRuleSetIpRuleResponse {
  /// The network action for the IP mask.
  final pulumi.Input<String> action;

  /// The readable name of the IP rule.
  final pulumi.Input<String>? filterName;

  /// The CIDR block defining the IP range.
  final pulumi.Input<String>? ipMask;

  /// Creates a new [NetworkRuleSetIpRuleResponse].
  /// [action] The network action for the IP mask.
  /// [filterName] The readable name of the IP rule.
  /// [ipMask] The CIDR block defining the IP range.
  NetworkRuleSetIpRuleResponse({
    required this.action,
    this.filterName,
    this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'filterName': ?filterName,
      'ipMask': ?ipMask,
    };
  }

  factory NetworkRuleSetIpRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetIpRuleResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      filterName: (() {
        final guardedValue = map['filterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipMask: (() {
        final guardedValue = map['ipMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
