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
    bool? deleteAutoSnapshot,
    String? description,
    bool? encrypted,
    bool? force,
    String? imageName,
    String? kmsKeyId,
    String? name,
    required String sourceImageId,
    required String sourceRegionId,
    Map<String, String>? tags,
  }) :
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      force = pulumi.Input.asOptionalInput<bool>(force),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceImageId = pulumi.Input.asInput<String>(sourceImageId),
      sourceRegionId = pulumi.Input.asInput<String>(sourceRegionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : map['deleteAutoSnapshot'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      force: map['force'] == null ? null : map['force'] as bool,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sourceImageId: map['sourceImageId'] as String,
      sourceRegionId: map['sourceRegionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

