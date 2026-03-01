// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule_delete_marker_replication.dart';
import 'get_bucket_replication_configuration_rule_destination.dart';
import 'get_bucket_replication_configuration_rule_existing_object_replication.dart';
import 'get_bucket_replication_configuration_rule_filter.dart';
import 'get_bucket_replication_configuration_rule_source_selection_criteria.dart';

class GetBucketReplicationConfigurationRule {
  final List<GetBucketReplicationConfigurationRuleDeleteMarkerReplication>
  deleteMarkerReplications;
  final List<GetBucketReplicationConfigurationRuleDestination> destinations;
  final List<GetBucketReplicationConfigurationRuleExistingObjectReplication>
  existingObjectReplications;
  final List<GetBucketReplicationConfigurationRuleFilter> filters;
  final String id;

  /// The object key name prefix that identifies the subset of objects to which the rule applies.
  final String prefix;
  final int priority;
  final List<GetBucketReplicationConfigurationRuleSourceSelectionCriteria>
  sourceSelectionCriterias;
  final String status;

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
      'deleteMarkerReplications':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleDeleteMarkerReplication,
            Map<String, dynamic>
          >(deleteMarkerReplications, (value) => value.toMap()),
      'destinations':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleDestination,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'existingObjectReplications':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleExistingObjectReplication,
            Map<String, dynamic>
          >(existingObjectReplications, (value) => value.toMap()),
      'filters':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleFilter,
            Map<String, dynamic>
          >(filters, (value) => value.toMap()),
      'id': id,
      'prefix': prefix,
      'priority': priority,
      'sourceSelectionCriterias':
          pulumi.Input.encodeList<
            GetBucketReplicationConfigurationRuleSourceSelectionCriteria,
            Map<String, dynamic>
          >(sourceSelectionCriterias, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRule(
      deleteMarkerReplications:
          pulumi.Input.decodeList<
            GetBucketReplicationConfigurationRuleDeleteMarkerReplication
          >(
            map['deleteMarkerReplications'],
            (value) =>
                GetBucketReplicationConfigurationRuleDeleteMarkerReplication.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      destinations:
          pulumi.Input.decodeList<
            GetBucketReplicationConfigurationRuleDestination
          >(
            map['destinations'],
            (value) => GetBucketReplicationConfigurationRuleDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      existingObjectReplications:
          pulumi.Input.decodeList<
            GetBucketReplicationConfigurationRuleExistingObjectReplication
          >(
            map['existingObjectReplications'],
            (value) =>
                GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      filters:
          pulumi.Input.decodeList<GetBucketReplicationConfigurationRuleFilter>(
            map['filters'],
            (value) => GetBucketReplicationConfigurationRuleFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      prefix: map['prefix'] as String,
      priority: map['priority'] as int,
      sourceSelectionCriterias:
          pulumi.Input.decodeList<
            GetBucketReplicationConfigurationRuleSourceSelectionCriteria
          >(
            map['sourceSelectionCriterias'],
            (value) =>
                GetBucketReplicationConfigurationRuleSourceSelectionCriteria.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      status: map['status'] as String,
    );
  }
}
