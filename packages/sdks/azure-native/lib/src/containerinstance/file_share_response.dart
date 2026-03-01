// ignore_for_file: unused_element, unnecessary_cast

import 'file_share_response_properties.dart';

/// File shares that can be mounted on container groups.
class FileShareResponse {
  final String? name;
  final FileShareResponseProperties? properties;
  final String? resourceGroupName;
  final String? storageAccountName;

  /// Creates a new [FileShareResponse].
  /// [name] Optional.
  /// [properties] Optional.
  /// [resourceGroupName] Optional.
  /// [storageAccountName] Optional.
  FileShareResponse({
    this.name,
    this.properties,
    this.resourceGroupName,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'resourceGroupName': ?resourceGroupName,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FileShareResponse.fromMap(Map<String, dynamic> map) {
    return FileShareResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : FileShareResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

