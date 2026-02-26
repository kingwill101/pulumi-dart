// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_plan_rule_copy_action_lifecycle/get_plan_rule_copy_action_lifecycle.dart';

class GetPlanRuleCopyAction {
  final String destinationVaultArn;
  final List<GetPlanRuleCopyActionLifecycle> lifecycles;

  GetPlanRuleCopyAction({
    required this.destinationVaultArn,
    required this.lifecycles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationVaultArn'] = destinationVaultArn;
    map['lifecycles'] =
        Input.encodeList<GetPlanRuleCopyActionLifecycle, Map<String, dynamic>>(
            lifecycles, (value) => value.toMap());
    return map;
  }

  factory GetPlanRuleCopyAction.fromMap(Map<String, dynamic> map) {
    return GetPlanRuleCopyAction(
      destinationVaultArn: map['destinationVaultArn'] as String,
      lifecycles: Input.decodeList<GetPlanRuleCopyActionLifecycle>(
          map['lifecycles'],
          (value) => GetPlanRuleCopyActionLifecycle.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
