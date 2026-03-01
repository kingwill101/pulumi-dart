// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_properties.dart';

/// {@template pulumi_fileshares_file_share_args_doc}
/// The set of arguments for FileShare.
/// {@endtemplate}
/// {@macro pulumi_fileshares_file_share_args_doc}
class FileShareArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<FileShareProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FileShareArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  /// [tags] Resource tags.
  FileShareArgs({
    pulumi.Output<String>? location,
    pulumi.Output<FileShareProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<FileShareProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<FileShareProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory FileShareArgs.fromMap(Map<String, dynamic> map) {
    return FileShareArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<FileShareProperties>(FileShareProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

