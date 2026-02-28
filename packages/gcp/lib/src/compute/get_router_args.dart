// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_router_get_router_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_compute_get_router_get_router_args_doc}
class GetRouterArgs {
  /// The name of the router.
  final pulumi.Input<String> name;
  /// The VPC network on which this router lives.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region this router has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRouterArgs].
  /// [name] The name of the router.
  /// [network] The VPC network on which this router lives.
  /// [project] The ID of the project in which the resource
  /// [region] The region this router has been created in. If
  GetRouterArgs({
    required String name,
    required String network,
    String? project,
    String? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'network': network,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

