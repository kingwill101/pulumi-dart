// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_replication_config_rule_delete_marker_replication.dart';
import 'bucket_replication_config_rule_destination.dart';
import 'bucket_replication_config_rule_existing_object_replication.dart';
import 'bucket_replication_config_rule_filter.dart';
import 'bucket_replication_config_rule_source_selection_criteria.dart';

class BucketReplicationConfigRule {
  /// Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when `filter` is used)documented below.
  final BucketReplicationConfigRuleDeleteMarkerReplication?
      deleteMarkerReplication;

  /// Specifies the destination for the rule. See below.
  final BucketReplicationConfigRuleDestination destination;

  /// Replicate existing objects in the source bucket according to the rule configurations. See below.
  final BucketReplicationConfigRuleExistingObjectReplication?
      existingObjectReplication;

  /// Filter that identifies subset of objects to which the replication rule applies. See below. If not specified, the `rule` will default to using `prefix`.
  final BucketReplicationConfigRuleFilter? filter;

  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final String? id;

  /// Object key name prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length. Defaults to an empty string (`""`) if `filter` is not specified.
  final String? prefix;

  /// Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  final int? priority;

  /// Specifies special object selection criteria. See below.
  final BucketReplicationConfigRuleSourceSelectionCriteria?
      sourceSelectionCriteria;

  /// Status of the rule. Either `"Enabled"` or `"Disabled"`. The rule is ignored if status is not "Enabled".
  final String status;

  /// Creates a new [BucketReplicationConfigRule].
  /// [deleteMarkerReplication] Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when `filter` is used)documented below.
  /// [destination] Specifies the destination for the rule. See below.
  /// [existingObjectReplication] Replicate existing objects in the source bucket according to the rule configurations. See below.
  /// [filter] Filter that identifies subset of objects to which the replication rule applies. See below. If not specified, the `rule` will default to using `prefix`.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [prefix] Object key name prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length. Defaults to an empty string (`""`) if `filter` is not specified.
  /// [priority] Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  /// [sourceSelectionCriteria] Specifies special object selection criteria. See below.
  /// [status] Status of the rule. Either `"Enabled"` or `"Disabled"`. The rule is ignored if status is not "Enabled".
  BucketReplicationConfigRule({
    this.deleteMarkerReplication,
    required this.destination,
    this.existingObjectReplication,
    this.filter,
    this.id,
    this.prefix,
    this.priority,
    this.sourceSelectionCriteria,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteMarkerReplicationValue = deleteMarkerReplication;
    if (deleteMarkerReplicationValue != null) {
      map['deleteMarkerReplication'] = deleteMarkerReplicationValue.toMap();
    }
    map['destination'] = destination.toMap();
    final existingObjectReplicationValue = existingObjectReplication;
    if (existingObjectReplicationValue != null) {
      map['existingObjectReplication'] = existingObjectReplicationValue.toMap();
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.toMap();
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final sourceSelectionCriteriaValue = sourceSelectionCriteria;
    if (sourceSelectionCriteriaValue != null) {
      map['sourceSelectionCriteria'] = sourceSelectionCriteriaValue.toMap();
    }
    map['status'] = status;
    return map;
  }

  factory BucketReplicationConfigRule.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRule(
      deleteMarkerReplication: map['deleteMarkerReplication'] == null
          ? null
          : BucketReplicationConfigRuleDeleteMarkerReplication.fromMap(
              (map['deleteMarkerReplication'] as Map).cast<String, dynamic>()),
      destination: BucketReplicationConfigRuleDestination.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      existingObjectReplication: map['existingObjectReplication'] == null
          ? null
          : BucketReplicationConfigRuleExistingObjectReplication.fromMap(
              (map['existingObjectReplication'] as Map)
                  .cast<String, dynamic>()),
      filter: map['filter'] == null
          ? null
          : BucketReplicationConfigRuleFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      sourceSelectionCriteria: map['sourceSelectionCriteria'] == null
          ? null
          : BucketReplicationConfigRuleSourceSelectionCriteria.fromMap(
              (map['sourceSelectionCriteria'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}
