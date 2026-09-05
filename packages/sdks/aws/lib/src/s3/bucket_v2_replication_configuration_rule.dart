// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule_destination.dart';
import 'bucket_v2_replication_configuration_rule_filter.dart';
import 'bucket_v2_replication_configuration_rule_source_selection_criteria.dart';

class BucketV2ReplicationConfigurationRule {
  /// Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  final pulumi.Input<String?>? deleteMarkerReplicationStatus;
  /// Destination for the rule. See `destination` Block below for details.
  final pulumi.Input<List<BucketV2ReplicationConfigurationRuleDestination>> destinations;
  /// Filter that identifies subset of objects to which the replication rule applies. See `filter` Block below for details.
  final pulumi.Input<List<BucketV2ReplicationConfigurationRuleFilter>?>? filters;
  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String?>? id;
  /// Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  final pulumi.Input<String?>? prefix;
  /// Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  final pulumi.Input<int?>? priority;
  /// Special object selection criteria. See `sourceSelectionCriteria` Block below for details.
  final pulumi.Input<List<BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>?>? sourceSelectionCriterias;
  /// Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  final pulumi.Input<String> status;

  /// Creates a new [BucketV2ReplicationConfigurationRule].
  /// [deleteMarkerReplicationStatus] Whether delete markers are replicated. The only valid value is `Enabled`. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when `filter` is used).
  /// [destinations] Destination for the rule. See `destination` Block below for details.
  /// [filters] Filter that identifies subset of objects to which the replication rule applies. See `filter` Block below for details.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [prefix] Object keyname prefix identifying one or more objects to which the rule applies. Must be less than or equal to 1024 characters in length.
  /// [priority] Priority associated with the rule. Priority should only be set if `filter` is configured. If not provided, defaults to `0`. Priority must be unique between multiple rules.
  /// [sourceSelectionCriterias] Special object selection criteria. See `sourceSelectionCriteria` Block below for details.
  /// [status] Status of the rule. Either `Enabled` or `Disabled`. The rule is ignored if status is not Enabled.
  const BucketV2ReplicationConfigurationRule({
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
    return <String, dynamic>{
      'deleteMarkerReplicationStatus': ?deleteMarkerReplicationStatus,
      'destinations': pulumi.Input.mapInputValue<List<BucketV2ReplicationConfigurationRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfigurationRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filters': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ReplicationConfigurationRuleFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfigurationRuleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'prefix': ?prefix,
      'priority': ?priority,
      'sourceSelectionCriterias': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>, List<Map<String, dynamic>>>(sourceSelectionCriterias, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfigurationRuleSourceSelectionCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory BucketV2ReplicationConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRule(
      deleteMarkerReplicationStatus: (() { final guardedValue = map['deleteMarkerReplicationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ReplicationConfigurationRuleDestination>(map['destinations']!, (value) => BucketV2ReplicationConfigurationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ReplicationConfigurationRuleFilter>(guardedValue, (value) => BucketV2ReplicationConfigurationRuleFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sourceSelectionCriterias: (() { final guardedValue = map['sourceSelectionCriterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ReplicationConfigurationRuleSourceSelectionCriteria>(guardedValue, (value) => BucketV2ReplicationConfigurationRuleSourceSelectionCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
