// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule_copy_action_lifecycle.dart';

class GetPlanRuleCopyAction {
  /// ARN of the destination backup vault for the copied backup.
  final pulumi.Input<String> destinationVaultArn;
  /// Lifecycle defining when a recovery point transitions to cold storage and when it expires. See below.
  final pulumi.Input<List<GetPlanRuleCopyActionLifecycle>> lifecycles;

  /// Creates a new [GetPlanRuleCopyAction].
  /// [destinationVaultArn] ARN of the destination backup vault for the copied backup.
  /// [lifecycles] Lifecycle defining when a recovery point transitions to cold storage and when it expires. See below.
  const GetPlanRuleCopyAction({
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
      destinationVaultArn: pulumi.Input.fromValue(map['destinationVaultArn'] as String),
      lifecycles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPlanRuleCopyActionLifecycle>(map['lifecycles']!, (value) => GetPlanRuleCopyActionLifecycle.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
