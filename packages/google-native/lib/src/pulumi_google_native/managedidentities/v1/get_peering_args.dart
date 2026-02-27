// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPeering.
class GetPeeringArgs {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  GetPeeringArgs({
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

  factory GetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringArgs(
      peeringId: pulumi.Input.asInput<String>(map['peeringId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
