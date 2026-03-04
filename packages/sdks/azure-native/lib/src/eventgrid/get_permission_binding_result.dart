// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPermissionBinding.
class GetPermissionBindingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The name of the client group resource that the permission is bound to.
  /// The client group needs to be a resource under the same namespace the permission binding is a part of.
  final String? clientGroupName;

  /// Description for the Permission Binding resource.
  final String? description;

  /// Fully qualified identifier of the resource.
  final String id;

  /// Name of the resource.
  final String name;

  /// The allowed permission.
  final String? permission;

  /// Provisioning state of the PermissionBinding resource.
  final String provisioningState;

  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;

  /// The name of the Topic Space resource that the permission is bound to.
  /// The Topic space needs to be a resource under the same namespace the permission binding is a part of.
  final String? topicSpaceName;

  /// Type of the resource.
  final String type;

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
  GetPermissionBindingResult({
    required this.azureApiVersion,
    this.clientGroupName,
    this.description,
    required this.id,
    required this.name,
    this.permission,
    required this.provisioningState,
    required this.systemData,
    this.topicSpaceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clientGroupName': ?clientGroupName,
      'description': ?description,
      'id': id,
      'name': name,
      'permission': ?permission,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'topicSpaceName': ?topicSpaceName,
      'type': type,
    };
  }

  factory GetPermissionBindingResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionBindingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clientGroupName: (() {
        final guardedValue = map['clientGroupName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      permission: (() {
        final guardedValue = map['permission'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      topicSpaceName: (() {
        final guardedValue = map['topicSpaceName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
