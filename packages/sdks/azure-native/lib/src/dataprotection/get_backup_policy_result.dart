// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBackupPolicy.
class GetBackupPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id represents the complete path to the resource.
  final String id;
  /// Resource name associated with the resource.
  final String name;
  /// BaseBackupPolicyResource properties
  final BackupPolicyResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetBackupPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id represents the complete path to the resource.
  /// [name] Resource name associated with the resource.
  /// [properties] BaseBackupPolicyResource properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  const GetBackupPolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: BackupPolicyResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
