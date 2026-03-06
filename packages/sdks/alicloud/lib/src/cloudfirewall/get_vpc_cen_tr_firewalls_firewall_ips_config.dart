// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcCenTrFirewallsFirewallIpsConfig {
  /// Basic rule switch. Value:-**1**: On-**0**: Closed state.
  final pulumi.Input<int> basicRules;
  /// Virtual patch switch. Value:-**1**: On-**0**: Closed state.
  final pulumi.Input<int> enableAllPatch;
  /// IPS defense mode. Value:-**1**: Intercept mode-**0**: Observation mode.
  final pulumi.Input<int> runMode;

  /// Creates a new [GetVpcCenTrFirewallsFirewallIpsConfig].
  /// [basicRules] Basic rule switch. Value:-**1**: On-**0**: Closed state.
  /// [enableAllPatch] Virtual patch switch. Value:-**1**: On-**0**: Closed state.
  /// [runMode] IPS defense mode. Value:-**1**: Intercept mode-**0**: Observation mode.
  const GetVpcCenTrFirewallsFirewallIpsConfig({
    required this.basicRules,
    required this.enableAllPatch,
    required this.runMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicRules': basicRules,
      'enableAllPatch': enableAllPatch,
      'runMode': runMode,
    };
  }

  factory GetVpcCenTrFirewallsFirewallIpsConfig.fromMap(Map<String, dynamic> map) {
    return GetVpcCenTrFirewallsFirewallIpsConfig(
      basicRules: pulumi.Input.fromValue(map['basicRules'] as int),
      enableAllPatch: pulumi.Input.fromValue(map['enableAllPatch'] as int),
      runMode: pulumi.Input.fromValue(map['runMode'] as int),
    );
  }
}

