// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_rule_network.dart';

/// {@template pulumi_network_route_filter_args_doc}
/// The set of arguments for RouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_args_doc}
class RouteFilterArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route filter.
  final pulumi.Input<String>? routeFilterName;
  /// Collection of RouteFilterRules contained within a route filter.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<RouteFilterRuleNetwork>>? rules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteFilterArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  /// [rules] Collection of RouteFilterRules contained within a route filter.
  /// [tags] Resource tags.
  RouteFilterArgs({
    String? id,
    String? location,
    required String resourceGroupName,
    String? routeFilterName,
    List<RouteFilterRuleNetwork>? rules,
    Map<String, String>? tags,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeFilterName = pulumi.Input.asOptionalInput<String>(routeFilterName),
      rules = pulumi.Input.asOptionalInput<List<RouteFilterRuleNetwork>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'routeFilterName': ?routeFilterName,
      'rules': ?rules,
      'tags': ?tags,
    };
  }

  factory RouteFilterArgs.fromMap(Map<String, dynamic> map) {
    return RouteFilterArgs(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeFilterName: map['routeFilterName'] == null ? null : map['routeFilterName'] as String,
      rules: map['rules'] == null ? null : (map['rules'] as List).cast<RouteFilterRuleNetwork>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

