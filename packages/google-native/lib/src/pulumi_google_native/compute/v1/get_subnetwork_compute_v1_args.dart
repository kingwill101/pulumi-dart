// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubnetwork.
class GetSubnetworkComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> subnetwork;

  GetSubnetworkComputeV1Args({
    this.project,
    required this.region,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetSubnetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      subnetwork: pulumi.Input.asInput<String>(map['subnetwork']),
    );
  }
}
