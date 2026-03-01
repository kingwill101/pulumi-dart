// ignore_for_file: unused_element, unnecessary_cast


class GetVpcCenTrFirewallsFirewallIpsConfig {
  /// Basic rule switch. Value:-**1**: On-**0**: Closed state.
  final int basicRules;
  /// Virtual patch switch. Value:-**1**: On-**0**: Closed state.
  final int enableAllPatch;
  /// IPS defense mode. Value:-**1**: Intercept mode-**0**: Observation mode.
  final int runMode;

  /// Creates a new [GetVpcCenTrFirewallsFirewallIpsConfig].
  /// [basicRules] Basic rule switch. Value:-**1**: On-**0**: Closed state.
  /// [enableAllPatch] Virtual patch switch. Value:-**1**: On-**0**: Closed state.
  /// [runMode] IPS defense mode. Value:-**1**: Intercept mode-**0**: Observation mode.
  GetVpcCenTrFirewallsFirewallIpsConfig({
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
      basicRules: map['basicRules'] as int,
      enableAllPatch: map['enableAllPatch'] as int,
      runMode: map['runMode'] as int,
    );
  }
}

