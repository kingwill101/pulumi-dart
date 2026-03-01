// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudService.
class GetCloudServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Cloud service properties
  final CloudServicePropertiesResponse properties;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
  final List<String>? zones;

  /// Creates a new [GetCloudServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [properties] Cloud service properties
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
  GetCloudServiceResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    this.systemData,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': ?systemData == null ? null : systemData!.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetCloudServiceResult.fromMap(Map<String, dynamic> map) {
    return GetCloudServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: CloudServicePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: map['systemData'] == null ? null : SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

