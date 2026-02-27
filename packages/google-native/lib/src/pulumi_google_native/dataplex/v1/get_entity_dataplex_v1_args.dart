// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntity.
class GetEntityDataplexV1Args {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> zone;

  GetEntityDataplexV1Args({
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

  factory GetEntityDataplexV1Args.fromMap(Map<String, dynamic> map) {
    return GetEntityDataplexV1Args(
      entityId: pulumi.Input.asInput<String>(map['entityId']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
