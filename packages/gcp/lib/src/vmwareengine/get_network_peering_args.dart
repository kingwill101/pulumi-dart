// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_network_peering_get_network_peering_args_doc}
/// Arguments for getNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_network_peering_get_network_peering_args_doc}
class GetNetworkPeeringArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkPeeringArgs].
  /// [name] Name of the resource.
  /// [project] Optional.
  GetNetworkPeeringArgs({
    required String name,
    String? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

