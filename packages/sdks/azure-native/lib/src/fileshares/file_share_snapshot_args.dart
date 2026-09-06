// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_snapshot_properties.dart';

/// {@template pulumi_fileshares_file_share_snapshot_args_doc}
/// The set of arguments for FileShareSnapshot.
/// {@endtemplate}
/// {@macro pulumi_fileshares_file_share_snapshot_args_doc}
class FileShareSnapshotArgs {
  /// The name of the FileShareSnapshot
  final pulumi.Input<String?>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<FileShareSnapshotProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  final pulumi.Input<String> resourceName;

  /// Creates a new [FileShareSnapshotArgs].
  /// [name] The name of the FileShareSnapshot
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  const FileShareSnapshotArgs({
    this.name,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<FileShareSnapshotProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory FileShareSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return FileShareSnapshotArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileShareSnapshotProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
