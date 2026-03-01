// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_route_policy_term.dart';

/// {@template pulumi_compute_router_route_policy_router_route_policy_args_doc}
/// The set of arguments for RouterRoutePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_router_route_policy_router_route_policy_args_doc}
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

  /// Creates a new [RouterRoutePolicyArgs].
  /// [name] Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router and NAT reside.
  /// [router] The name of the Cloud Router in which this route policy will be configured.
  /// [terms] List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// [type] This is policy's type, which is one of IMPORT or EXPORT
  RouterRoutePolicyArgs({
    String? name,
    String? project,
    String? region,
    required String router,
    required List<RouterRoutePolicyTerm> terms,
    String? type,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       router = pulumi.Input.asInput<String>(router),
       terms = pulumi.Input.asInput<List<RouterRoutePolicyTerm>>(terms),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'router': router,
      'terms':
          pulumi.Input.mapInputValue<
            List<RouterRoutePolicyTerm>,
            List<Map<String, dynamic>>
          >(
            terms,
            (value) =>
                pulumi.Input.encodeList<
                  RouterRoutePolicyTerm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': ?type,
    };
  }

  factory RouterRoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RouterRoutePolicyArgs(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      router: map['router'] as String,
      terms: pulumi.Input.decodeList<RouterRoutePolicyTerm>(
        map['terms'],
        (value) => RouterRoutePolicyTerm.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
