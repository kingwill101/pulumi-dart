// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_storage_mover_args_doc}
/// The set of arguments for StorageMover.
/// {@endtemplate}
/// {@macro pulumi_storagemover_storage_mover_args_doc}
class StorageMoverArgs {
  /// A description for the Storage Mover.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String>? storageMoverName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageMoverArgs].
  /// [description] A description for the Storage Mover.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  /// [tags] Resource tags.
  StorageMoverArgs({
    String? description,
    String? location,
    required String resourceGroupName,
    String? storageMoverName,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asOptionalInput<String>(storageMoverName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': ?storageMoverName,
      'tags': ?tags,
    };
  }

  factory StorageMoverArgs.fromMap(Map<String, dynamic> map) {
    return StorageMoverArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageMoverName: map['storageMoverName'] == null ? null : map['storageMoverName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

