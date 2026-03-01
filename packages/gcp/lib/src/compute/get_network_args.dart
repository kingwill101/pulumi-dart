// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// The name of the network.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// A full or partial URL of the network profile to apply to this network.
  final pulumi.Input<String>? networkProfile;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkArgs].
  /// [name] The name of the network.
  /// [networkProfile] A full or partial URL of the network profile to apply to this network.
  /// [project] The ID of the project in which the resource belongs. If it
  GetNetworkArgs({
    required String name,
    String? networkProfile,
    String? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      networkProfile = pulumi.Input.asOptionalInput<String>(networkProfile),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkProfile': ?networkProfile,
      'project': ?project,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : map['networkProfile'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

