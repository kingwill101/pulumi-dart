// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attribute.dart';

/// The set of arguments for UserDataMapping.
class UserDataMappingArgs {
  final Input<String> consentStoreId;

  /// A unique identifier for the mapped resource.
  final Input<String> dataId;
  final Input<String> datasetId;
  final Input<String>? location;

  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final Input<List<Attribute>>? resourceAttributes;

  /// User's UUID provided by the client.
  final Input<String> userId;

  UserDataMappingArgs({
    required this.consentStoreId,
    required this.dataId,
    required this.datasetId,
    this.location,
    this.name,
    this.project,
    this.resourceAttributes,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['dataId'] = dataId;
    map['datasetId'] = datasetId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceAttributesValue = resourceAttributes;
    if (resourceAttributesValue != null) {
      map['resourceAttributes'] = Input.mapOptionalInputValue<List<Attribute>,
              List<Map<String, dynamic>>>(
          resourceAttributesValue,
          (value) => Input.encodeList<Attribute, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['userId'] = userId;
    return map;
  }

  factory UserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return UserDataMappingArgs(
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      dataId: Input.asInput<String>(map['dataId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceAttributes:
          Input.asOptionalInput<List<Attribute>>(map['resourceAttributes']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
