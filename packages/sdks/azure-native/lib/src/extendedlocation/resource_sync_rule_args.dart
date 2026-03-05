// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sync_rule_properties_selector.dart';

/// {@template pulumi_extendedlocation_resource_sync_rule_args_doc}
/// The set of arguments for ResourceSyncRule.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_resource_sync_rule_args_doc}
class ResourceSyncRuleArgs {
  /// Resource Sync Rule name.
  final pulumi.Input<String>? childResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Priority represents a priority of the Resource Sync Rule
  final pulumi.Input<int>? priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Custom Locations name.
  final pulumi.Input<String> resourceName;
  /// A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
  final pulumi.Input<ResourceSyncRulePropertiesSelector>? selector;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// For an unmapped custom resource, its labels will be used to find matching resource sync rules. If this resource sync rule is one of the matching rules with highest priority, then the unmapped custom resource will be projected to the target resource group associated with this resource sync rule. The user creating this resource sync rule should have write permissions on the target resource group and this write permission will be validated when creating the resource sync rule.
  final pulumi.Input<String>? targetResourceGroup;

  /// Creates a new [ResourceSyncRuleArgs].
  /// [childResourceName] Resource Sync Rule name.
  /// [location] The geo-location where the resource lives
  /// [priority] Priority represents a priority of the Resource Sync Rule
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Custom Locations name.
  /// [selector] A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
  /// [tags] Resource tags.
  /// [targetResourceGroup] For an unmapped custom resource, its labels will be used to find matching resource sync rules. If this resource sync rule is one of the matching rules with highest priority, then the unmapped custom resource will be projected to the target resource group associated with this resource sync rule. The user creating this resource sync rule should have write permissions on the target resource group and this write permission will be validated when creating the resource sync rule.
  ResourceSyncRuleArgs({
    this.childResourceName,
    this.location,
    this.priority,
    required this.resourceGroupName,
    required this.resourceName,
    this.selector,
    this.tags,
    this.targetResourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': ?childResourceName,
      'location': ?location,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'selector': ?pulumi.Input.mapOptionalInputValue<ResourceSyncRulePropertiesSelector, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'tags': ?tags,
      'targetResourceGroup': ?targetResourceGroup,
    };
  }

  factory ResourceSyncRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResourceSyncRuleArgs(
      childResourceName: (() { final guardedValue = map['childResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSyncRulePropertiesSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceGroup: (() { final guardedValue = map['targetResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

