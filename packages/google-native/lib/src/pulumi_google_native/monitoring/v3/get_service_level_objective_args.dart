// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceLevelObjective.
class GetServiceLevelObjectiveArgs {
  final Input<String> serviceId;
  final Input<String> serviceLevelObjectiveId;
  final Input<String> v3Id;
  final Input<String> v3Id1;
  final Input<String>? view;

  GetServiceLevelObjectiveArgs({
    required this.serviceId,
    required this.serviceLevelObjectiveId,
    required this.v3Id,
    required this.v3Id1,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceId'] = serviceId;
    map['serviceLevelObjectiveId'] = serviceLevelObjectiveId;
    map['v3Id'] = v3Id;
    map['v3Id1'] = v3Id1;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetServiceLevelObjectiveArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelObjectiveArgs(
      serviceId: Input.asInput<String>(map['serviceId']),
      serviceLevelObjectiveId:
          Input.asInput<String>(map['serviceLevelObjectiveId']),
      v3Id: Input.asInput<String>(map['v3Id']),
      v3Id1: Input.asInput<String>(map['v3Id1']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
