// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_blob_storage_retention_rule_criteria.dart';
import 'backup_policy_blob_storage_retention_rule_life_cycle.dart';

class BackupPolicyBlobStorageRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  final BackupPolicyBlobStorageRetentionRuleCriteria criteria;
  /// A `life_cycle` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  final BackupPolicyBlobStorageRetentionRuleLifeCycle lifeCycle;
  /// The name which should be used for this retention rule. Changing this forces a new Backup Policy Blob Storage to be created.
  final String name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy Blob Storage to be created.
  final int priority;

  /// Creates a new [BackupPolicyBlobStorageRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [lifeCycle] A `life_cycle` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy Blob Storage to be created.
  BackupPolicyBlobStorageRetentionRule({
    required this.criteria,
    required this.lifeCycle,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': criteria.toMap(),
      'lifeCycle': lifeCycle.toMap(),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyBlobStorageRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBlobStorageRetentionRule(
      criteria: BackupPolicyBlobStorageRetentionRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      lifeCycle: BackupPolicyBlobStorageRetentionRuleLifeCycle.fromMap((map['lifeCycle'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

