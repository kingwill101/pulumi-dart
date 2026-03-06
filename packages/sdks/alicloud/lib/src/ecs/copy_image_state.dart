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
  const CopyImageState({
    this.deleteAutoSnapshot,
    this.description,
    this.encrypted,
    this.force,
    this.imageName,
    this.kmsKeyId,
    this.name,
    this.sourceImageId,
    this.sourceRegionId,
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
      'sourceImageId': ?sourceImageId,
      'sourceRegionId': ?sourceRegionId,
      'tags': ?tags,
    };
  }

  factory CopyImageState.fromMap(Map<String, dynamic> map) {
    return CopyImageState(
      deleteAutoSnapshot: (() { final guardedValue = map['deleteAutoSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegionId: (() { final guardedValue = map['sourceRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

