// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_enterprise_policy_location.dart';

class AgentcoreBrowserEnterprisePolicy {
  /// Location of the enterprise policy file. See `location` below.
  final pulumi.Input<AgentcoreBrowserEnterprisePolicyLocation> location;
  /// Type of browser enterprise policy. Valid values: `MANAGED`, `RECOMMENDED`.
  final pulumi.Input<String>? type;

  /// Creates a new [AgentcoreBrowserEnterprisePolicy].
  /// [location] Location of the enterprise policy file. See `location` below.
  /// [type] Type of browser enterprise policy. Valid values: `MANAGED`, `RECOMMENDED`.
  const AgentcoreBrowserEnterprisePolicy({
    required this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': pulumi.Input.mapInputValue<AgentcoreBrowserEnterprisePolicyLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AgentcoreBrowserEnterprisePolicy.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserEnterprisePolicy(
      location: pulumi.Input.fromValue(AgentcoreBrowserEnterprisePolicyLocation.fromMap((map['location']! as Map).cast<String, dynamic>())),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
