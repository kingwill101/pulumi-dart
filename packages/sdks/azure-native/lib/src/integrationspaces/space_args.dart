// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_space_args_doc}
/// The set of arguments for Space.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_space_args_doc}
class SpaceArgs {
  /// The description of the resource.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String>? spaceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SpaceArgs].
  /// [description] The description of the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  /// [tags] Resource tags.
  SpaceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? spaceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'spaceName': ?spaceName,
      'tags': ?tags,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

