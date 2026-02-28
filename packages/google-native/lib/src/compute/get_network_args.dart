// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_args_doc}
class GetNetworkArgs {
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkArgs].
  /// [network] Required.
  /// [project] Optional.
  GetNetworkArgs({
    required String network,
    String? project,
  }) :
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'project': ?project,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

