// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_grant_rule_to_cen_grant_rule_to_cen_args_doc}
/// The set of arguments for GrantRuleToCen.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_grant_rule_to_cen_grant_rule_to_cen_args_doc}
class GrantRuleToCenArgs {
  /// The ID of the CEN instance to which you want to grant permissions.
  final pulumi.Input<String> cenId;
  /// The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  final pulumi.Input<String> cenOwnerId;
  /// The ID of the VBR.
  final pulumi.Input<String> instanceId;

  /// Creates a new [GrantRuleToCenArgs].
  /// [cenId] The ID of the CEN instance to which you want to grant permissions.
  /// [cenOwnerId] The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  /// [instanceId] The ID of the VBR.
  GrantRuleToCenArgs({
    required this.cenId,
    required this.cenOwnerId,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenOwnerId': cenOwnerId,
      'instanceId': instanceId,
    };
  }

  factory GrantRuleToCenArgs.fromMap(Map<String, dynamic> map) {
    return GrantRuleToCenArgs(
      cenId: (map['cenId'] as String).input(),
      cenOwnerId: (map['cenOwnerId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

