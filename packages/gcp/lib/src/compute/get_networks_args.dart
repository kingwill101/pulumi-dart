// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_networks_get_networks_args_doc}
/// Arguments for getNetworks.
/// {@endtemplate}
/// {@macro pulumi_compute_get_networks_get_networks_args_doc}
class GetNetworksArgs {
  /// The name of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworksArgs].
  /// [project] The name of the project.
  GetNetworksArgs({String? project})
    : project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project};
  }

  factory GetNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworksArgs(
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
