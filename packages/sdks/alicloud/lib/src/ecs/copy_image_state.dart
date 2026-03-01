// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CopyImage resources.
class CopyImageState {
  final pulumi.Input<bool>? deleteAutoSnapshot;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<bool>? force;
  final pulumi.Input<String>? imageName;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? sourceImageId;
  final pulumi.Input<String>? sourceRegionId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CopyImageState].
  /// [deleteAutoSnapshot] Optional.
  /// [description] Optional.
  /// [encrypted] Optional.
  /// [force] Optional.
  /// [imageName] Optional.
  /// [kmsKeyId] Optional.
  /// [name] Optional.
  /// [sourceImageId] Optional.
  /// [sourceRegionId] Optional.
  /// [tags] Optional.
  CopyImageState({
    pulumi.Output<bool>? deleteAutoSnapshot,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<String>? sourceRegionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      force = pulumi.Input.asOptionalInput<bool>(force),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceRegionId = pulumi.Input.asOptionalInput<String>(sourceRegionId),
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
      'sourceImageId': ?sourceImageId,
      'sourceRegionId': ?sourceRegionId,
      'tags': ?tags,
    };
  }

  factory CopyImageState.fromMap(Map<String, dynamic> map) {
    return CopyImageState(
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : pulumi.Output.create<bool>(map['deleteAutoSnapshot'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      sourceRegionId: map['sourceRegionId'] == null ? null : pulumi.Output.create<String>(map['sourceRegionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

