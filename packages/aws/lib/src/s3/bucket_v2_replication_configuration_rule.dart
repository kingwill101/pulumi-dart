// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule_destination.dart';
import 'bucket_v2_replication_configuration_rule_filter.dart';
import 'bucket_v2_replication_configuration_rule_source_selection_criteria.dart';

class BucketV2ReplicationConfigurationRule {
  /// Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  final String? deleteMarkerReplicationStatus;

  /// Specifies the destination for the rule (documented below).
  final List<BucketV2ReplicationConfigurationRuleDestination> destinations;

  /// Filter that identifies subset of objects to which the replication rule applies (documented below).
  final List<BucketV2ReplicationConfigurationRuleFilter>? filters;

  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final String? id;

  /// Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final String? prefix;

  /// Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  final int? priority;

  /// Specifies special object selection criteria (documented below).
  final List<BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>?
      sourceSelectionCriterias;

  /// Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  final String status;

  /// Creates a new [BucketV2ReplicationConfigurationRule].
  /// [deleteMarkerReplicationStatus] Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  /// [destinations] Specifies the destination for the rule (documented below).
  /// [filters] Filter that identifies subset of objects to which the replication rule applies (documented below).
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [prefix] Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [priority] Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  /// [sourceSelectionCriterias] Specifies special object selection criteria (documented below).
  /// [status] Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  BucketV2ReplicationConfigurationRule({
    this.deleteMarkerReplicationStatus,
    required this.destinations,
    this.filters,
    this.id,
    this.prefix,
    this.priority,
    this.sourceSelectionCriterias,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteMarkerReplicationStatusValue = deleteMarkerReplicationStatus;
    if (deleteMarkerReplicationStatusValue != null) {
      map['deleteMarkerReplicationStatus'] = deleteMarkerReplicationStatusValue;
    }
    map['destinations'] = pulumi.Input.encodeList<
        BucketV2ReplicationConfigurationRuleDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          BucketV2ReplicationConfigurationRuleFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
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
    final sourceSelectionCriteriasValue = sourceSelectionCriterias;
    if (sourceSelectionCriteriasValue != null) {
      map['sourceSelectionCriterias'] = pulumi.Input.encodeList<
              BucketV2ReplicationConfigurationRuleSourceSelectionCriteria,
              Map<String, dynamic>>(
          sourceSelectionCriteriasValue, (value) => value.toMap());
    }
    map['status'] = status;
    return map;
  }

  factory BucketV2ReplicationConfigurationRule.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRule(
      deleteMarkerReplicationStatus:
          map['deleteMarkerReplicationStatus'] == null
              ? null
              : map['deleteMarkerReplicationStatus'] as String,
      destinations: pulumi.Input.decodeList<
              BucketV2ReplicationConfigurationRuleDestination>(
          map['destinations'],
          (value) => BucketV2ReplicationConfigurationRuleDestination.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<BucketV2ReplicationConfigurationRuleFilter>(
              map['filters'],
              (value) => BucketV2ReplicationConfigurationRuleFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      sourceSelectionCriterias: map['sourceSelectionCriterias'] == null
          ? null
          : pulumi.Input.decodeList<
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>(
              map['sourceSelectionCriterias'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteria
                      .fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}
