// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_delete_marker_replication.dart';
import 'get_bucket_replication_configuration_rule_destination.dart';
import 'get_bucket_replication_configuration_rule_existing_object_replication.dart';
import 'get_bucket_replication_configuration_rule_filter.dart';
import 'get_bucket_replication_configuration_rule_source_selection_criteria.dart';

class GetBucketReplicationConfigurationRule {
  /// Configuration block that specifies whether delete markers are replicated. See `deleteMarkerReplication` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>> deleteMarkerReplications;
  /// Configuration block that specifies the destination for the rule. See `destination` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleDestination>> destinations;
  /// Configuration block that specifies replication of existing objects. See `existingObjectReplication` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleExistingObjectReplication>> existingObjectReplications;
  /// Configuration block that identifies the subset of objects to which the rule applies. See `filter` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleFilter>> filters;
  /// Unique identifier for the rule.
  final pulumi.Input<String> id;
  /// Object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String> prefix;
  /// Priority associated with the rule.
  final pulumi.Input<int> priority;
  /// Configuration block that specifies special object selection criteria. See `sourceSelectionCriteria` Block below.
  final pulumi.Input<List<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>> sourceSelectionCriterias;
  /// Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in KMS.
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRule].
  /// [deleteMarkerReplications] Configuration block that specifies whether delete markers are replicated. See `deleteMarkerReplication` Block below.
  /// [destinations] Configuration block that specifies the destination for the rule. See `destination` Block below.
  /// [existingObjectReplications] Configuration block that specifies replication of existing objects. See `existingObjectReplication` Block below.
  /// [filters] Configuration block that identifies the subset of objects to which the rule applies. See `filter` Block below.
  /// [id] Unique identifier for the rule.
  /// [prefix] Object key name prefix that identifies the subset of objects to which the rule applies.
  /// [priority] Priority associated with the rule.
  /// [sourceSelectionCriterias] Configuration block that specifies special object selection criteria. See `sourceSelectionCriteria` Block below.
  /// [status] Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in KMS.
  const GetBucketReplicationConfigurationRule({
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
      deleteMarkerReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>(map['deleteMarkerReplications']!, (value) => GetBucketReplicationConfigurationRuleDeleteMarkerReplication.fromMap((value as Map).cast<String, dynamic>()))),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleDestination>(map['destinations']!, (value) => GetBucketReplicationConfigurationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))),
      existingObjectReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleExistingObjectReplication>(map['existingObjectReplications']!, (value) => GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap((value as Map).cast<String, dynamic>()))),
      filters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilter>(map['filters']!, (value) => GetBucketReplicationConfigurationRuleFilter.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      sourceSelectionCriterias: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>(map['sourceSelectionCriterias']!, (value) => GetBucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
