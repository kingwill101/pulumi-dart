// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_rule_delete_marker_replication.dart';
import 'bucket_replication_config_rule_destination.dart';
import 'bucket_replication_config_rule_existing_object_replication.dart';
import 'bucket_replication_config_rule_filter.dart';
import 'bucket_replication_config_rule_source_selection_criteria.dart';

class BucketReplicationConfigRule {
  /// Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when `filter` is used)documented below.
  final pulumi.Input<BucketReplicationConfigRuleDeleteMarkerReplication?>? deleteMarkerReplication;
  /// Destination for the rule. See below.
  final pulumi.Input<BucketReplicationConfigRuleDestination> destination;
  /// Replicate existing objects in the source bucket according to the rule configurations. See below.
  final pulumi.Input<BucketReplicationConfigRuleExistingObjectReplication?>? existingObjectReplication;
  /// Filter that identifies subset of objects to which the replication rule applies. See below. If not specified, the `rule` will default to using `prefix`.
  final pulumi.Input<BucketReplicationConfigRuleFilter?>? filter;
  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String?>? id;
  /// Object key name prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length. Defaults to an empty string (`""`) if `filter` is not specified.
  final pulumi.Input<String?>? prefix;
  /// Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  final pulumi.Input<int?>? priority;
  /// Special object selection criteria. See below.
  final pulumi.Input<BucketReplicationConfigRuleSourceSelectionCriteria?>? sourceSelectionCriteria;
  /// Status of the rule. Either `"Enabled"` or `"Disabled"`. The rule is ignored if status is not "Enabled".
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigRule].
  /// [deleteMarkerReplication] Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when `filter` is used)documented below.
  /// [destination] Destination for the rule. See below.
  /// [existingObjectReplication] Replicate existing objects in the source bucket according to the rule configurations. See below.
  /// [filter] Filter that identifies subset of objects to which the replication rule applies. See below. If not specified, the `rule` will default to using `prefix`.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [prefix] Object key name prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length. Defaults to an empty string (`""`) if `filter` is not specified.
  /// [priority] Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  /// [sourceSelectionCriteria] Special object selection criteria. See below.
  /// [status] Status of the rule. Either `"Enabled"` or `"Disabled"`. The rule is ignored if status is not "Enabled".
  const BucketReplicationConfigRule({
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
    return <String, dynamic>{
      'deleteMarkerReplication': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleDeleteMarkerReplication, Map<String, dynamic>>(deleteMarkerReplication, (value) => value.toMap()),
      'destination': pulumi.Input.mapInputValue<BucketReplicationConfigRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'existingObjectReplication': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleExistingObjectReplication, Map<String, dynamic>>(existingObjectReplication, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
      'prefix': ?prefix,
      'priority': ?priority,
      'sourceSelectionCriteria': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigRuleSourceSelectionCriteria, Map<String, dynamic>>(sourceSelectionCriteria, (value) => value.toMap()),
      'status': status,
    };
  }

  factory BucketReplicationConfigRule.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRule(
      deleteMarkerReplication: (() { final guardedValue = map['deleteMarkerReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleDeleteMarkerReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destination: pulumi.Input.fromValue(BucketReplicationConfigRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      existingObjectReplication: (() { final guardedValue = map['existingObjectReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleExistingObjectReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sourceSelectionCriteria: (() { final guardedValue = map['sourceSelectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketReplicationConfigRuleSourceSelectionCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
