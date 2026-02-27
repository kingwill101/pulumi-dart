// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPeering.
class GetPeeringArgs3 {
  final Input<String> peeringId;
  final Input<String>? project;

  GetPeeringArgs3({
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peeringId'] = peeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPeeringArgs3.fromMap(Map<String, dynamic> map) {
    return GetPeeringArgs3(
      peeringId: Input.asInput<String>(map['peeringId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
