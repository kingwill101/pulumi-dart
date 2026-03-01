// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_filter_rule_args_doc}
/// The set of arguments for RouteFilterRule.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_rule_args_doc}
class RouteFilterRuleArgs {
  /// The access type of the rule.
  final pulumi.Input<String> access;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final pulumi.Input<List<String>> communities;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route filter.
  final pulumi.Input<String> routeFilterName;
  /// The rule type of the rule.
  final pulumi.Input<String> routeFilterRuleType;
  /// The name of the route filter rule.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [RouteFilterRuleArgs].
  /// [access] The access type of the rule.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  /// [routeFilterRuleType] The rule type of the rule.
  /// [ruleName] The name of the route filter rule.
  RouteFilterRuleArgs({
    required String access,
    required List<String> communities,
    String? id,
    String? location,
    String? name,
    required String resourceGroupName,
    required String routeFilterName,
    required String routeFilterRuleType,
    String? ruleName,
  }) :
      access = pulumi.Input.asInput<String>(access),
      communities = pulumi.Input.asInput<List<String>>(communities),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeFilterName = pulumi.Input.asInput<String>(routeFilterName),
      routeFilterRuleType = pulumi.Input.asInput<String>(routeFilterRuleType),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routeFilterName': routeFilterName,
      'routeFilterRuleType': routeFilterRuleType,
      'ruleName': ?ruleName,
    };
  }

  factory RouteFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return RouteFilterRuleArgs(
      access: map['access'] as String,
      communities: (map['communities'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeFilterName: map['routeFilterName'] as String,
      routeFilterRuleType: map['routeFilterRuleType'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
    );
  }
}

