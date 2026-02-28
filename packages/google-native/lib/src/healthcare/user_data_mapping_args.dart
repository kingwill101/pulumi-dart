// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute.dart';

/// {@template pulumi_healthcare_v1_user_data_mapping_args_doc}
/// The set of arguments for UserDataMapping.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_user_data_mapping_args_doc}
class UserDataMappingArgs {
  final pulumi.Input<String> consentStoreId;
  /// A unique identifier for the mapped resource.
  final pulumi.Input<String> dataId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? location;
  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final pulumi.Input<List<Attribute>>? resourceAttributes;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Creates a new [UserDataMappingArgs].
  /// [consentStoreId] Required.
  /// [dataId] A unique identifier for the mapped resource.
  /// [datasetId] Required.
  /// [location] Optional.
  /// [name] Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  /// [project] Optional.
  /// [resourceAttributes] Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  /// [userId] User's UUID provided by the client.
  UserDataMappingArgs({
    required String consentStoreId,
    required String dataId,
    required String datasetId,
    String? location,
    String? name,
    String? project,
    List<Attribute>? resourceAttributes,
    required String userId,
  }) :
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      dataId = pulumi.Input.asInput<String>(dataId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceAttributes = pulumi.Input.asOptionalInput<List<Attribute>>(resourceAttributes),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'dataId': dataId,
      'datasetId': datasetId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<List<Attribute>, List<Map<String, dynamic>>>(resourceAttributes, (value) => pulumi.Input.encodeList<Attribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': userId,
    };
  }

  factory UserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return UserDataMappingArgs(
      consentStoreId: map['consentStoreId'] as String,
      dataId: map['dataId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceAttributes: map['resourceAttributes'] == null ? null : pulumi.Input.decodeList<Attribute>(map['resourceAttributes'], (value) => Attribute.fromMap((value as Map).cast<String, dynamic>())),
      userId: map['userId'] as String,
    );
  }
}

