// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEntityType.
class GetEntityTypeArgs2 {
  final Input<String> entityTypeId;
  final Input<String> featurestoreId;
  final Input<String> location;
  final Input<String>? project;

  GetEntityTypeArgs2({
    required this.entityTypeId,
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['featurestoreId'] = featurestoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntityTypeArgs2.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeArgs2(
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
