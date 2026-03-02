// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_properties.dart';

/// File shares that can be mounted on container groups.
class FileShare {
  final pulumi.Input<String>? name;
  final pulumi.Input<FileShareProperties>? properties;
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [FileShare].
  /// [name] Optional.
  /// [properties] Optional.
  /// [resourceGroupName] Optional.
  /// [storageAccountName] Optional.
  FileShare({
    this.name,
    this.properties,
    this.resourceGroupName,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<FileShareProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory FileShare.fromMap(Map<String, dynamic> map) {
    return FileShare(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (FileShareProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
    );
  }
}

