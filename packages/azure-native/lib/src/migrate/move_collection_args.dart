// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'move_collection_properties.dart';

/// {@template pulumi_migrate_move_collection_args_doc}
/// The set of arguments for MoveCollection.
/// {@endtemplate}
/// {@macro pulumi_migrate_move_collection_args_doc}
class MoveCollectionArgs {
  /// Defines the MSI properties of the Move Collection.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives.
  final pulumi.Input<String>? location;
  /// The Move Collection Name.
  final pulumi.Input<String>? moveCollectionName;
  /// Defines the move collection properties.
  final pulumi.Input<MoveCollectionProperties>? properties;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MoveCollectionArgs].
  /// [identity] Defines the MSI properties of the Move Collection.
  /// [location] The geo-location where the resource lives.
  /// [moveCollectionName] The Move Collection Name.
  /// [properties] Defines the move collection properties.
  /// [resourceGroupName] The Resource Group Name.
  /// [tags] Resource tags.
  MoveCollectionArgs({
    Identity? identity,
    String? location,
    String? moveCollectionName,
    MoveCollectionProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      moveCollectionName = pulumi.Input.asOptionalInput<String>(moveCollectionName),
      properties = pulumi.Input.asOptionalInput<MoveCollectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'moveCollectionName': ?moveCollectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MoveCollectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MoveCollectionArgs.fromMap(Map<String, dynamic> map) {
    return MoveCollectionArgs(
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      moveCollectionName: map['moveCollectionName'] == null ? null : map['moveCollectionName'] as String,
      properties: map['properties'] == null ? null : MoveCollectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

