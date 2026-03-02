// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule_copy_action_lifecycle.dart';

class GetPlanRuleCopyAction {
  final pulumi.Input<String> destinationVaultArn;
  final pulumi.Input<List<GetPlanRuleCopyActionLifecycle>> lifecycles;

  /// Creates a new [GetPlanRuleCopyAction].
  /// [destinationVaultArn] Required.
  /// [lifecycles] Required.
  GetPlanRuleCopyAction({
    required this.destinationVaultArn,
    required this.lifecycles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationVaultArn': destinationVaultArn,
      'lifecycles': pulumi.Input.mapInputValue<List<GetPlanRuleCopyActionLifecycle>, List<Map<String, dynamic>>>(lifecycles, (value) => pulumi.Input.encodeList<GetPlanRuleCopyActionLifecycle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPlanRuleCopyAction.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleCopyAction(
      destinationVaultArn: (map['destinationVaultArn'] as String).input(),
      lifecycles: (pulumi.Input.decodeList<GetPlanRuleCopyActionLifecycle>(map['lifecycles'], (value) => GetPlanRuleCopyActionLifecycle.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

