// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../router_route_policy_term/router_route_policy_term.dart';

/// The set of arguments for RouterRoutePolicy.
class RouterRoutePolicyArgs {
  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the router and NAT reside.
  final pulumi.Input<String>? region;

  /// The name of the Cloud Router in which this route policy will be configured.
  final pulumi.Input<String> router;

  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  final pulumi.Input<List<RouterRoutePolicyTerm>> terms;

  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  final pulumi.Input<String>? type;

  RouterRoutePolicyArgs({
    this.name,
    this.project,
    this.region,
    required this.router,
    required this.terms,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    map['terms'] = pulumi.Input.mapInputValue<List<RouterRoutePolicyTerm>,
            List<Map<String, dynamic>>>(
        terms,
        (value) => pulumi.Input.encodeList<RouterRoutePolicyTerm,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RouterRoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RouterRoutePolicyArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      router: pulumi.Input.asInput<String>(map['router']),
      terms: pulumi.Input.asInput<List<RouterRoutePolicyTerm>>(map['terms']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
