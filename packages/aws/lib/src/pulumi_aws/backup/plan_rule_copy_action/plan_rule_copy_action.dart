// ignore_for_file: unused_element, unnecessary_cast

import '../plan_rule_copy_action_lifecycle/plan_rule_copy_action_lifecycle.dart';

class PlanRuleCopyAction {
  /// An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup.
  final String destinationVaultArn;

  /// The lifecycle defines when a protected resource is copied over to a backup vault and when it expires.  Fields documented above.
  final PlanRuleCopyActionLifecycle? lifecycle;

  PlanRuleCopyAction({
    required this.destinationVaultArn,
    this.lifecycle,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationVaultArn'] = destinationVaultArn;
    final lifecycleValue = lifecycle;
    if (lifecycleValue != null) {
      map['lifecycle'] = lifecycleValue.toMap();
    }
    return map;
  }

  factory PlanRuleCopyAction.fromMap(Map<String, dynamic> map) {
    return PlanRuleCopyAction(
      destinationVaultArn: map['destinationVaultArn'] as String,
      lifecycle: map['lifecycle'] == null
          ? null
          : PlanRuleCopyActionLifecycle.fromMap(
              (map['lifecycle'] as Map).cast<String, dynamic>()),
    );
  }
}
