// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_configuration_rule_destination.dart';
import 'bucket_replication_configuration_rule_filter.dart';
import 'bucket_replication_configuration_rule_source_selection_criteria.dart';

class BucketReplicationConfigurationRule {
  /// Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  final pulumi.Input<String>? deleteMarkerReplicationStatus;
  /// Specifies the destination for the rule (documented below).
  final pulumi.Input<BucketReplicationConfigurationRuleDestination> destination;
  /// Filter that identifies subset of objects to which the replication rule applies (documented below).
  final pulumi.Input<BucketReplicationConfigurationRuleFilter>? filter;
  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String>? id;
  /// Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String>? prefix;
  /// Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  final pulumi.Input<int>? priority;
  /// Specifies special object selection criteria (documented below).
  final pulumi.Input<BucketReplicationConfigurationRuleSourceSelectionCriteria>? sourceSelectionCriteria;
  /// Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  final pulumi.Input<String> status;

  /// Creates a new [BucketReplicationConfigurationRule].
  /// [deleteMarkerReplicationStatus] Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  /// [destination] Specifies the destination for the rule (documented below).
  /// [filter] Filter that identifies subset of objects to which the replication rule applies (documented below).
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [prefix] Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [priority] Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  /// [sourceSelectionCriteria] Specifies special object selection criteria (documented below).
  /// [status] Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  BucketReplicationConfigurationRule({
    this.deleteMarkerReplicationStatus,
    required this.destination,
    this.filter,
    this.id,
    this.prefix,
    this.priority,
    this.sourceSelectionCriteria,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteMarkerReplicationStatus': ?deleteMarkerReplicationStatus,
      'destination': pulumi.Input.mapInputValue<BucketReplicationConfigurationRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigurationRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
      'prefix': ?prefix,
      'priority': ?priority,
      'sourceSelectionCriteria': ?pulumi.Input.mapOptionalInputValue<BucketReplicationConfigurationRuleSourceSelectionCriteria, Map<String, dynamic>>(sourceSelectionCriteria, (value) => value.toMap()),
      'status': status,
    };
  }

  factory BucketReplicationConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigurationRule(
      deleteMarkerReplicationStatus: map['deleteMarkerReplicationStatus'] == null ? null : ((map['deleteMarkerReplicationStatus'] as String).input()).input(),
      destination: (BucketReplicationConfigurationRuleDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      filter: map['filter'] == null ? null : ((BucketReplicationConfigurationRuleFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      priority: map['priority'] == null ? null : ((map['priority'] as int).input()).input(),
      sourceSelectionCriteria: map['sourceSelectionCriteria'] == null ? null : ((BucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap((map['sourceSelectionCriteria']! as Map).cast<String, dynamic>())).input()).input(),
      status: (map['status'] as String).input(),
    );
  }
}

