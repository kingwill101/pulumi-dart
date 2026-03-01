// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
/// The set of arguments for GradientaiAgentRoute.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
class GradientaiAgentRouteArgs {
  /// The UUID of the child agent.
  final pulumi.Input<String> childAgentUuid;
  /// if-case condition for the route.
  final pulumi.Input<String>? ifCase;
  /// The UUID of the parent agent.
  final pulumi.Input<String> parentAgentUuid;
  final pulumi.Input<bool>? rollback;
  /// A name for the route.
  final pulumi.Input<String>? routeName;

  /// Creates a new [GradientaiAgentRouteArgs].
  /// [childAgentUuid] The UUID of the child agent.
  /// [ifCase] if-case condition for the route.
  /// [parentAgentUuid] The UUID of the parent agent.
  /// [rollback] Optional.
  /// [routeName] A name for the route.
  GradientaiAgentRouteArgs({
    required String childAgentUuid,
    String? ifCase,
    required String parentAgentUuid,
    bool? rollback,
    String? routeName,
  }) :
      childAgentUuid = pulumi.Input.asInput<String>(childAgentUuid),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      parentAgentUuid = pulumi.Input.asInput<String>(parentAgentUuid),
      rollback = pulumi.Input.asOptionalInput<bool>(rollback),
      routeName = pulumi.Input.asOptionalInput<String>(routeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgentUuid': childAgentUuid,
      'ifCase': ?ifCase,
      'parentAgentUuid': parentAgentUuid,
      'rollback': ?rollback,
      'routeName': ?routeName,
    };
  }

  factory GradientaiAgentRouteArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentRouteArgs(
      childAgentUuid: map['childAgentUuid'] as String,
      ifCase: map['ifCase'] == null ? null : map['ifCase'] as String,
      parentAgentUuid: map['parentAgentUuid'] as String,
      rollback: map['rollback'] == null ? null : map['rollback'] as bool,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
    );
  }
}

