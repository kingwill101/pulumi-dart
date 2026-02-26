// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInterconnect.
class GetInterconnectArgs {
  final Input<String> interconnect;
  final Input<String>? project;

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
      interconnect: Input.asInput<String>(map['interconnect']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
