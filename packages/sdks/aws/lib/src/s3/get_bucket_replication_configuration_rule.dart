// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_delete_marker_replication.dart';
import 'get_bucket_replication_configuration_rule_destination.dart';
import 'get_bucket_replication_configuration_rule_existing_object_replication.dart';
import 'get_bucket_replication_configuration_rule_filter.dart';
import 'get_bucket_replication_configuration_rule_source_selection_criteria.dart';

class GetBucketReplicationConfigurationRule {
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>> deleteMarkerReplications;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestination>> destinations;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleExistingObjectReplication>> existingObjectReplications;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleFilter>> filters;
  final pulumi.Input<String> id;
  /// The object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String> prefix;
  final pulumi.Input<int> priority;
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>> sourceSelectionCriterias;
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRule].
  /// [deleteMarkerReplications] Required.
  /// [destinations] Required.
  /// [existingObjectReplications] Required.
  /// [filters] Required.
  /// [id] Required.
  /// [prefix] The object key name prefix that identifies the subset of objects to which the rule applies.
  /// [priority] Required.
  /// [sourceSelectionCriterias] Required.
  /// [status] Required.
  GetBucketReplicationConfigurationRule({
    required this.deleteMarkerReplications,
    required this.destinations,
    required this.existingObjectReplications,
    required this.filters,
    required this.id,
    required this.prefix,
    required this.priority,
    required this.sourceSelectionCriterias,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteMarkerReplications': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>, List<Map<String, dynamic>>>(deleteMarkerReplications, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDeleteMarkerReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'existingObjectReplications': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleExistingObjectReplication>, List<Map<String, dynamic>>>(existingObjectReplications, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleExistingObjectReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filters': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'prefix': prefix,
      'priority': priority,
      'sourceSelectionCriterias': pulumi.Input.mapInputValue<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>, List<Map<String, dynamic>>>(sourceSelectionCriterias, (value) => pulumi.Input.encodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRule.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRule(
      deleteMarkerReplications: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>(map['deleteMarkerReplications']!, (value) => GetBucketReplicationConfigurationRuleDeleteMarkerReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinations: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestination>(map['destinations']!, (value) => GetBucketReplicationConfigurationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      existingObjectReplications: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleExistingObjectReplication>(map['existingObjectReplications']!, (value) => GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filters: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilter>(map['filters']!, (value) => GetBucketReplicationConfigurationRuleFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      prefix: (map['prefix'] as String).input(),
      priority: (map['priority'] as int).input(),
      sourceSelectionCriterias: (pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>(map['sourceSelectionCriterias']!, (value) => GetBucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
    );
  }
}

