// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPeering.
class GetPeeringArgs2 {
  final Input<String> peeringId;
  final Input<String>? project;

  GetPeeringArgs2({
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

  factory GetPeeringArgs2.fromMap(Map<String, dynamic> map) {
    return GetPeeringArgs2(
      peeringId: Input.asInput<String>(map['peeringId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
