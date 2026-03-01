// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_default_retention_rule_life_cycle.dart';

class BackupPolicyMysqlFlexibleServerDefaultRetentionRule {
  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final List<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle> lifeCycles;

  /// Creates a new [BackupPolicyMysqlFlexibleServerDefaultRetentionRule].
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  BackupPolicyMysqlFlexibleServerDefaultRetentionRule({
    required this.lifeCycles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifeCycles': pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle, Map<String, dynamic>>(lifeCycles, (value) => value.toMap()),
    };
  }

  factory BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerDefaultRetentionRule(
      lifeCycles: pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle>(map['lifeCycles'], (value) => BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

