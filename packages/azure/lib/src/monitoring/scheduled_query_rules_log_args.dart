// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_log_criteria.dart';

/// {@template pulumi_monitoring_scheduled_query_rules_log_scheduled_query_rules_log_args_doc}
/// The set of arguments for ScheduledQueryRulesLog.
/// {@endtemplate}
/// {@macro pulumi_monitoring_scheduled_query_rules_log_scheduled_query_rules_log_args_doc}
class ScheduledQueryRulesLogArgs {
  /// A list of IDs of Resources referred into query.
  final pulumi.Input<List<String>>? authorizedResourceIds;
  /// A `criteria` block as defined below.
  final pulumi.Input<ScheduledQueryRulesLogCriteria> criteria;
  /// The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataSourceId;
  /// The description of the scheduled query rule.
  final pulumi.Input<String>? description;
  /// Whether this scheduled query rule is enabled. Default is `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the scheduled query rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ScheduledQueryRulesLogArgs].
  /// [authorizedResourceIds] A list of IDs of Resources referred into query.
  /// [criteria] A `criteria` block as defined below.
  /// [dataSourceId] The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled. Default is `true`.
  /// [location] Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  /// [name] The name of the scheduled query rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ScheduledQueryRulesLogArgs({
    List<String>? authorizedResourceIds,
    required ScheduledQueryRulesLogCriteria criteria,
    required String dataSourceId,
    String? description,
    bool? enabled,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      authorizedResourceIds = pulumi.Input.asOptionalInput<List<String>>(authorizedResourceIds),
      criteria = pulumi.Input.asInput<ScheduledQueryRulesLogCriteria>(criteria),
      dataSourceId = pulumi.Input.asInput<String>(dataSourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedResourceIds': ?authorizedResourceIds,
      'criteria': pulumi.Input.mapInputValue<ScheduledQueryRulesLogCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ScheduledQueryRulesLogArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesLogArgs(
      authorizedResourceIds: map['authorizedResourceIds'] == null ? null : (map['authorizedResourceIds'] as List).cast<String>(),
      criteria: ScheduledQueryRulesLogCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      dataSourceId: map['dataSourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

