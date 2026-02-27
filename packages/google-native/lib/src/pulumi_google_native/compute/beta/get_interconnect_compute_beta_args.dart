// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInterconnect.
class GetInterconnectComputeBetaArgs {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  GetInterconnectComputeBetaArgs({
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

  factory GetInterconnectComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectComputeBetaArgs(
      interconnect: pulumi.Input.asInput<String>(map['interconnect']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
