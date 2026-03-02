// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleBindVpc {
  /// The region ID of the vpc.
  final pulumi.Input<String> regionId;
  /// The Region Name of the vpc.
  final pulumi.Input<String> regionName;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The Name of the VPC.
  final pulumi.Input<String> vpcName;

  /// Creates a new [GetRulesRuleBindVpc].
  /// [regionId] The region ID of the vpc.
  /// [regionName] The Region Name of the vpc.
  /// [vpcId] The ID of the VPC.
  /// [vpcName] The Name of the VPC.
  GetRulesRuleBindVpc({
    required this.regionId,
    required this.regionName,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': regionId,
      'regionName': regionName,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetRulesRuleBindVpc.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleBindVpc(
      regionId: (map['regionId'] as String).input(),
      regionName: (map['regionName'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcName: (map['vpcName'] as String).input(),
    );
  }
}

