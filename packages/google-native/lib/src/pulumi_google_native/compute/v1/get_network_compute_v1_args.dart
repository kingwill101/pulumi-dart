// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetwork.
class GetNetworkComputeV1Args {
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  GetNetworkComputeV1Args({
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkComputeV1Args(
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
