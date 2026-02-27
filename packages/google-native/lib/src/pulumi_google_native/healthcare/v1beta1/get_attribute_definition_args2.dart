// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAttributeDefinition.
class GetAttributeDefinitionArgs2 {
  final Input<String> attributeDefinitionId;
  final Input<String> consentStoreId;
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;

  GetAttributeDefinitionArgs2({
    required this.attributeDefinitionId,
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeDefinitionId'] = attributeDefinitionId;
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAttributeDefinitionArgs2.fromMap(Map<String, dynamic> map) {
    return GetAttributeDefinitionArgs2(
      attributeDefinitionId:
          Input.asInput<String>(map['attributeDefinitionId']),
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
