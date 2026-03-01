// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creator_properties.dart';

/// {@template pulumi_maps_creator_args_doc}
/// The set of arguments for Creator.
/// {@endtemplate}
/// {@macro pulumi_maps_creator_args_doc}
class CreatorArgs {
  /// The name of the Maps Account.
  final pulumi.Input<String> accountName;
  /// The name of the Maps Creator instance.
  final pulumi.Input<String>? creatorName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The Creator resource properties.
  final pulumi.Input<CreatorProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CreatorArgs].
  /// [accountName] The name of the Maps Account.
  /// [creatorName] The name of the Maps Creator instance.
  /// [location] The geo-location where the resource lives
  /// [properties] The Creator resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CreatorArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? creatorName,
    pulumi.Output<String>? location,
    required pulumi.Output<CreatorProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      creatorName = pulumi.Input.asOptionalInput<String>(creatorName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<CreatorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'creatorName': ?creatorName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<CreatorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CreatorArgs.fromMap(Map<String, dynamic> map) {
    return CreatorArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      creatorName: map['creatorName'] == null ? null : pulumi.Output.create<String>(map['creatorName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<CreatorProperties>(CreatorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

