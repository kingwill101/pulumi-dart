// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../router_route_policy_term/router_route_policy_term.dart';

/// The set of arguments for RouterRoutePolicy.
class RouterRoutePolicyArgs {
  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the router and NAT reside.
  final Input<String>? region;

  /// The name of the Cloud Router in which this route policy will be configured.
  final Input<String> router;

  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  final Input<List<RouterRoutePolicyTerm>> terms;

  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  final Input<String>? type;

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
    map['terms'] = Input.mapInputValue<List<RouterRoutePolicyTerm>,
            List<Map<String, dynamic>>>(
        terms,
        (value) =>
            Input.encodeList<RouterRoutePolicyTerm, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RouterRoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RouterRoutePolicyArgs(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
      terms: Input.asInput<List<RouterRoutePolicyTerm>>(map['terms']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
