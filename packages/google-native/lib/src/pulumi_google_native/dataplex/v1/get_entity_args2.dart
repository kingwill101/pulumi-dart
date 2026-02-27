// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEntity.
class GetEntityArgs2 {
  final Input<String> entityId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;
  final Input<String> zone;

  GetEntityArgs2({
    required this.entityId,
    required this.lakeId,
    required this.location,
    this.project,
    this.view,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetEntityArgs2.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs2(
      entityId: Input.asInput<String>(map['entityId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
