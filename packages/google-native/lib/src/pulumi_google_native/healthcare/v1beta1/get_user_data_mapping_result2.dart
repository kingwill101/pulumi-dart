// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'attribute_response2.dart';

/// Result data returned by getUserDataMapping.
class GetUserDataMappingResult2 {
  /// Indicates the time when this mapping was archived.
  final String archiveTime;

  /// Indicates whether this mapping is archived.
  final bool archived;

  /// A unique identifier for the mapped resource.
  final String dataId;

  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final String name;

  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final List<AttributeResponse2> resourceAttributes;

  /// User's UUID provided by the client.
  final String userId;

  GetUserDataMappingResult2({
    required this.archiveTime,
    required this.archived,
    required this.dataId,
    required this.name,
    required this.resourceAttributes,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveTime'] = archiveTime;
    map['archived'] = archived;
    map['dataId'] = dataId;
    map['name'] = name;
    map['resourceAttributes'] =
        Input.encodeList<AttributeResponse2, Map<String, dynamic>>(
            resourceAttributes, (value) => value.toMap());
    map['userId'] = userId;
    return map;
  }

  factory GetUserDataMappingResult2.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingResult2(
      archiveTime: map['archiveTime'] as String,
      archived: map['archived'] as bool,
      dataId: map['dataId'] as String,
      name: map['name'] as String,
      resourceAttributes: Input.decodeList<AttributeResponse2>(
          map['resourceAttributes'],
          (value) => AttributeResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      userId: map['userId'] as String,
    );
  }
}
