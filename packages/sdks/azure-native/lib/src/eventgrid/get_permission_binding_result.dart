// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPermissionBinding.
class GetPermissionBindingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The name of the client group resource that the permission is bound to.
  /// The client group needs to be a resource under the same namespace the permission binding is a part of.
  final String? clientGroupName;
  /// Description for the Permission Binding resource.
  final String? description;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Name of the resource.
  final String? name;
  /// The allowed permission.
  final String? permission;
  /// Provisioning state of the PermissionBinding resource.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// The name of the Topic Space resource that the permission is bound to.
  /// The Topic space needs to be a resource under the same namespace the permission binding is a part of.
  final String? topicSpaceName;
  /// Type of the resource.
  final String? type;

  /// Creates a new [GetPermissionBindingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientGroupName] The name of the client group resource that the permission is bound to.
  /// [description] Description for the Permission Binding resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [permission] The allowed permission.
  /// [provisioningState] Provisioning state of the PermissionBinding resource.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [topicSpaceName] The name of the Topic Space resource that the permission is bound to.
  /// [type] Type of the resource.
  const GetPermissionBindingResult({
    this.azureApiVersion,
    this.clientGroupName,
    this.description,
    this.id,
    this.name,
    this.permission,
    this.provisioningState,
    this.systemData,
    this.topicSpaceName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clientGroupName': ?clientGroupName,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'permission': ?permission,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'topicSpaceName': ?topicSpaceName,
      'type': ?type,
    };
  }

  factory GetPermissionBindingResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionBindingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientGroupName: (() { final guardedValue = map['clientGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      topicSpaceName: (() { final guardedValue = map['topicSpaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
