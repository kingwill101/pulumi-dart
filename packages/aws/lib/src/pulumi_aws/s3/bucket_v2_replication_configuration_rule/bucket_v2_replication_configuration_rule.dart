// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_v2_replication_configuration_rule_destination/bucket_v2_replication_configuration_rule_destination.dart';
import '../bucket_v2_replication_configuration_rule_filter/bucket_v2_replication_configuration_rule_filter.dart';
import '../bucket_v2_replication_configuration_rule_source_selection_criteria/bucket_v2_replication_configuration_rule_source_selection_criteria.dart';

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
    map['destinations'] = Input.encodeList<
        BucketV2ReplicationConfigurationRuleDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<
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
      map['sourceSelectionCriterias'] = Input.encodeList<
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
      destinations:
          Input.decodeList<BucketV2ReplicationConfigurationRuleDestination>(
              map['destinations'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleDestination.fromMap(
                      (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<BucketV2ReplicationConfigurationRuleFilter>(
              map['filters'],
              (value) => BucketV2ReplicationConfigurationRuleFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      sourceSelectionCriterias: map['sourceSelectionCriterias'] == null
          ? null
          : Input.decodeList<
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>(
              map['sourceSelectionCriterias'],
              (value) =>
                  BucketV2ReplicationConfigurationRuleSourceSelectionCriteria
                      .fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}
