// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInterconnect.
class GetInterconnectArgs3 {
  final Input<String> interconnect;
  final Input<String>? project;

  GetInterconnectArgs3({
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

  factory GetInterconnectArgs3.fromMap(Map<String, dynamic> map) {
    return GetInterconnectArgs3(
      interconnect: Input.asInput<String>(map['interconnect']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
