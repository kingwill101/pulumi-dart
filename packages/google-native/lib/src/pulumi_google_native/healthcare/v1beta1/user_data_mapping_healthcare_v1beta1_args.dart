// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_healthcare_v1beta1.dart';

/// The set of arguments for UserDataMapping.
class UserDataMappingHealthcareV1beta1Args {
  final pulumi.Input<String> consentStoreId;

  /// A unique identifier for the mapped resource.
  final pulumi.Input<String> dataId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? location;

  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final pulumi.Input<List<AttributeHealthcareV1beta1>>? resourceAttributes;

  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  UserDataMappingHealthcareV1beta1Args({
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
      map['resourceAttributes'] = pulumi.Input.mapOptionalInputValue<
              List<AttributeHealthcareV1beta1>, List<Map<String, dynamic>>>(
          resourceAttributesValue,
          (value) => pulumi.Input.encodeList<AttributeHealthcareV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['userId'] = userId;
    return map;
  }

  factory UserDataMappingHealthcareV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return UserDataMappingHealthcareV1beta1Args(
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      dataId: pulumi.Input.asInput<String>(map['dataId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceAttributes:
          pulumi.Input.asOptionalInput<List<AttributeHealthcareV1beta1>>(
              map['resourceAttributes']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
