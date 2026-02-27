// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPeering.
class GetPeeringManagedidentitiesV1beta1Args {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  GetPeeringManagedidentitiesV1beta1Args({
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

  factory GetPeeringManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPeeringManagedidentitiesV1beta1Args(
      peeringId: pulumi.Input.asInput<String>(map['peeringId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
