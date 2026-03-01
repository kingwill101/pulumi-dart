// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_mover_args_doc}
/// The set of arguments for Mover.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_mover_args_doc}
class MoverArgs {
  /// A description for the Storage Mover.
  final pulumi.Input<String>? description;
  /// Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Mover.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MoverArgs].
  /// [description] A description for the Storage Mover.
  /// [location] Specifies the Azure Region where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [name] Specifies the name which should be used for this Storage Mover. Changing this forces a new Storage Mover to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Storage Mover should exist. Changing this forces a new Storage Mover to be created.
  /// [tags] A mapping of tags which should be assigned to the Storage Mover.
  MoverArgs({
    String? description,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MoverArgs.fromMap(Map<String, dynamic> map) {
    return MoverArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

