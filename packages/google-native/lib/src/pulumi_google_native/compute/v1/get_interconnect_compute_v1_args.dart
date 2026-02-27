// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInterconnect.
class GetInterconnectComputeV1Args {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  GetInterconnectComputeV1Args({
    required this.interconnect,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interconnect'] = interconnect;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInterconnectComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInterconnectComputeV1Args(
      interconnect: pulumi.Input.asInput<String>(map['interconnect']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
