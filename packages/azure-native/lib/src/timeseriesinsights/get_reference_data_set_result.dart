// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_data_set_key_property_response.dart';

/// Result data returned by getReferenceDataSet.
class GetReferenceDataSetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the resource was created.
  final String creationTime;
  /// The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  final String? dataStringComparisonBehavior;
  /// Resource Id
  final String id;
  /// The list of key properties for the reference data set.
  final List<ReferenceDataSetKeyPropertyResponse> keyProperties;
  /// Resource location
  final String location;
  /// Resource name
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetReferenceDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The time the resource was created.
  /// [dataStringComparisonBehavior] The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  /// [id] Resource Id
  /// [keyProperties] The list of key properties for the reference data set.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Provisioning state of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  GetReferenceDataSetResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.dataStringComparisonBehavior,
    required this.id,
    required this.keyProperties,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'dataStringComparisonBehavior': ?dataStringComparisonBehavior,
      'id': id,
      'keyProperties': pulumi.Input.encodeList<ReferenceDataSetKeyPropertyResponse, Map<String, dynamic>>(keyProperties, (value) => value.toMap()),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetReferenceDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetReferenceDataSetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      dataStringComparisonBehavior: map['dataStringComparisonBehavior'] == null ? null : map['dataStringComparisonBehavior'] as String,
      id: map['id'] as String,
      keyProperties: pulumi.Input.decodeList<ReferenceDataSetKeyPropertyResponse>(map['keyProperties'], (value) => ReferenceDataSetKeyPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

