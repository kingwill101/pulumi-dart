// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntityType.
class GetEntityTypeAiplatformV1beta1Args {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEntityTypeAiplatformV1beta1Args({
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

  factory GetEntityTypeAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeAiplatformV1beta1Args(
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      featurestoreId: pulumi.Input.asInput<String>(map['featurestoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
