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
  const CreatorArgs({
    required this.accountName,
    this.creatorName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      creatorName: (() { final guardedValue = map['creatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(CreatorProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
