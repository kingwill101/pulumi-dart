// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcSecurityGroupRulesExclusive.
class VpcSecurityGroupRulesExclusiveArgs {
  /// Egress rule IDs.
  final Input<List<String>> egressRuleIds;

  /// Ingress rule IDs.
  final Input<List<String>> ingressRuleIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the security group.
  final Input<String> securityGroupId;

  VpcSecurityGroupRulesExclusiveArgs({
    required this.egressRuleIds,
    required this.ingressRuleIds,
    this.region,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressRuleIds'] = egressRuleIds;
    map['ingressRuleIds'] = ingressRuleIds;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    return map;
  }

  factory VpcSecurityGroupRulesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return VpcSecurityGroupRulesExclusiveArgs(
      egressRuleIds: Input.asInput<List<String>>(map['egressRuleIds']),
      ingressRuleIds: Input.asInput<List<String>>(map['ingressRuleIds']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupId: Input.asInput<String>(map['securityGroupId']),
    );
  }
}
