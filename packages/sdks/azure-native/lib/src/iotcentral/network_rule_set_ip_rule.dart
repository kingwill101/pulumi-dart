// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object for an IP range that will be allowed access.
class NetworkRuleSetIpRule {
  /// The readable name of the IP rule.
  final pulumi.Input<String>? filterName;

  /// The CIDR block defining the IP range.
  final pulumi.Input<String>? ipMask;

  /// Creates a new [NetworkRuleSetIpRule].
  /// [filterName] The readable name of the IP rule.
  /// [ipMask] The CIDR block defining the IP range.
  NetworkRuleSetIpRule({this.filterName, this.ipMask});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filterName': ?filterName, 'ipMask': ?ipMask};
  }

  factory NetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetIpRule(
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
