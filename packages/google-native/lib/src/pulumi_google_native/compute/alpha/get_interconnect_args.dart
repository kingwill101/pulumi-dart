// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInterconnect.
class GetInterconnectArgs {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  GetInterconnectArgs({
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

  factory GetInterconnectArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectArgs(
      interconnect: pulumi.Input.asInput<String>(map['interconnect']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
