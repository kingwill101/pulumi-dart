// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_copy_image_copy_image_args_doc}
/// The set of arguments for CopyImage.
/// {@endtemplate}
/// {@macro pulumi_ecs_copy_image_copy_image_args_doc}
class CopyImageArgs {
  final pulumi.Input<bool>? deleteAutoSnapshot;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<bool>? force;
  final pulumi.Input<String>? imageName;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> sourceImageId;
  final pulumi.Input<String> sourceRegionId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CopyImageArgs].
  /// [deleteAutoSnapshot] Optional.
  /// [description] Optional.
  /// [encrypted] Optional.
  /// [force] Optional.
  /// [imageName] Optional.
  /// [kmsKeyId] Optional.
  /// [name] Optional.
  /// [sourceImageId] Required.
  /// [sourceRegionId] Required.
  /// [tags] Optional.
  CopyImageArgs({
    this.deleteAutoSnapshot,
    this.description,
    this.encrypted,
    this.force,
    this.imageName,
    this.kmsKeyId,
    this.name,
    required this.sourceImageId,
    required this.sourceRegionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'description': ?description,
      'encrypted': ?encrypted,
      'force': ?force,
      'imageName': ?imageName,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'sourceImageId': sourceImageId,
      'sourceRegionId': sourceRegionId,
      'tags': ?tags,
    };
  }

  factory CopyImageArgs.fromMap(Map<String, dynamic> map) {
    return CopyImageArgs(
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : (map['deleteAutoSnapshot'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sourceImageId: (map['sourceImageId'] as String).input(),
      sourceRegionId: (map['sourceRegionId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

