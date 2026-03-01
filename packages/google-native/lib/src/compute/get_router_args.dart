// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_router_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_router_args_doc}
class GetRouterArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> router;

  /// Creates a new [GetRouterArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [router] Required.
  GetRouterArgs({
    String? project,
    required String region,
    required String router,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       router = pulumi.Input.asInput<String>(router);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'router': router,
    };
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      router: map['router'] as String,
    );
  }
}
