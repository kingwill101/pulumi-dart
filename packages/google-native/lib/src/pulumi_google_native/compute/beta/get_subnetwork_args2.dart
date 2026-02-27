// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSubnetwork.
class GetSubnetworkArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> subnetwork;

  GetSubnetworkArgs2({
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

  factory GetSubnetworkArgs2.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      subnetwork: Input.asInput<String>(map['subnetwork']),
    );
  }
}
