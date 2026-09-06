// ignore_for_file: unused_element, unnecessary_cast

import 'backup_instance_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBackupInstance.
class GetBackupInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Proxy Resource Id represents the complete path to the resource.
  final String? id;
  /// Proxy Resource name associated with the resource.
  final String? name;
  /// BackupInstanceResource properties
  final BackupInstanceResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Proxy Resource tags.
  final Map<String, String>? tags;
  /// Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String? type;

  /// Creates a new [GetBackupInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Proxy Resource Id represents the complete path to the resource.
  /// [name] Proxy Resource name associated with the resource.
  /// [properties] BackupInstanceResource properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Proxy Resource tags.
  /// [type] Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  const GetBackupInstanceResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetBackupInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetBackupInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return BackupInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
