// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_rule_copy_action_lifecycle.dart';

class PlanRuleCopyAction {
  /// An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup.
  final pulumi.Input<String> destinationVaultArn;
  /// The lifecycle defines when a protected resource is copied over to a backup vault and when it expires.  Fields documented above.
  final pulumi.Input<PlanRuleCopyActionLifecycle>? lifecycle;

  /// Creates a new [PlanRuleCopyAction].
  /// [destinationVaultArn] An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup.
  /// [lifecycle] The lifecycle defines when a protected resource is copied over to a backup vault and when it expires.  Fields documented above.
  PlanRuleCopyAction({
    required this.destinationVaultArn,
    this.lifecycle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationVaultArn': destinationVaultArn,
      'lifecycle': ?pulumi.Input.mapOptionalInputValue<PlanRuleCopyActionLifecycle, Map<String, dynamic>>(lifecycle, (value) => value.toMap()),
    };
  }

  factory PlanRuleCopyAction.fromMap(Map<String, dynamic> map) {
    return PlanRuleCopyAction(
      destinationVaultArn: pulumi.Input.fromValue(map['destinationVaultArn'] as String),
      lifecycle: (() { final guardedValue = map['lifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanRuleCopyActionLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

