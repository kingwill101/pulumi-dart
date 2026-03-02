// ignore_for_file: unused_element, unnecessary_cast

import 'backup_instance_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBackupInstance.
class GetBackupInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Proxy Resource Id represents the complete path to the resource.
  final String id;
  /// Proxy Resource name associated with the resource.
  final String name;
  /// BackupInstanceResource properties
  final BackupInstanceResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Proxy Resource tags.
  final Map<String, String>? tags;
  /// Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetBackupInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Proxy Resource Id represents the complete path to the resource.
  /// [name] Proxy Resource name associated with the resource.
  /// [properties] BackupInstanceResource properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Proxy Resource tags.
  /// [type] Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  GetBackupInstanceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBackupInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetBackupInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: BackupInstanceResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

