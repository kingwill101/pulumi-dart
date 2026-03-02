// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationRiskExceptionConfiguration {
  /// Overrides the risk decision to always block the pre-authentication requests.
  /// The IP range is in CIDR notation, a compact representation of an IP address and its routing prefix.
  /// Can contain a maximum of 200 items.
  final pulumi.Input<List<String>>? blockedIpRangeLists;
  /// Risk detection isn't performed on the IP addresses in this range list.
  /// The IP range is in CIDR notation.
  /// Can contain a maximum of 200 items.
  final pulumi.Input<List<String>>? skippedIpRangeLists;

  /// Creates a new [RiskConfigurationRiskExceptionConfiguration].
  /// [blockedIpRangeLists] Overrides the risk decision to always block the pre-authentication requests.
  /// [skippedIpRangeLists] Risk detection isn't performed on the IP addresses in this range list.
  RiskConfigurationRiskExceptionConfiguration({
    this.blockedIpRangeLists,
    this.skippedIpRangeLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockedIpRangeLists': ?blockedIpRangeLists,
      'skippedIpRangeLists': ?skippedIpRangeLists,
    };
  }

  factory RiskConfigurationRiskExceptionConfiguration.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationRiskExceptionConfiguration(
      blockedIpRangeLists: map['blockedIpRangeLists'] == null ? null : (((map['blockedIpRangeLists'] as List).cast<String>()).input()).input(),
      skippedIpRangeLists: map['skippedIpRangeLists'] == null ? null : (((map['skippedIpRangeLists'] as List).cast<String>()).input()).input(),
    );
  }
}

