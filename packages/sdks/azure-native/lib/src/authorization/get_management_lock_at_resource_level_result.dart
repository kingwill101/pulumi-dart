// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_owner_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagementLockAtResourceLevel.
class GetManagementLockAtResourceLevelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the lock.
  final String id;
  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  final String level;
  /// The name of the lock.
  final String name;
  /// Notes about the lock. Maximum of 512 characters.
  final String? notes;
  /// The owners of the lock.
  final List<ManagementLockOwnerResponse>? owners;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource type of the lock - Microsoft.Authorization/locks.
  final String type;

  /// Creates a new [GetManagementLockAtResourceLevelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID of the lock.
  /// [level] The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  /// [name] The name of the lock.
  /// [notes] Notes about the lock. Maximum of 512 characters.
  /// [owners] The owners of the lock.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type of the lock - Microsoft.Authorization/locks.
  GetManagementLockAtResourceLevelResult({
    required this.azureApiVersion,
    required this.id,
    required this.level,
    required this.name,
    this.notes,
    this.owners,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'level': level,
      'name': name,
      'notes': ?notes,
      'owners': ?owners == null ? null : pulumi.Input.encodeList<ManagementLockOwnerResponse, Map<String, dynamic>>(owners!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetManagementLockAtResourceLevelResult.fromMap(Map<String, dynamic> map) {
    return GetManagementLockAtResourceLevelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      level: map['level'] as String,
      name: map['name'] as String,
      notes: map['notes'] == null ? null : map['notes']! as String,
      owners: map['owners'] == null ? null : pulumi.Input.decodeList<ManagementLockOwnerResponse>(map['owners']!, (value) => ManagementLockOwnerResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

