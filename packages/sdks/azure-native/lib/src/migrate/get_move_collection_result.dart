// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'move_collection_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMoveCollection.
class GetMoveCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The etag of the resource.
  final String etag;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// Defines the MSI properties of the Move Collection.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives.
  final String? location;
  /// The name of the resource
  final String name;
  /// Defines the move collection properties.
  final MoveCollectionPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetMoveCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The etag of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [identity] Defines the MSI properties of the Move Collection.
  /// [location] The geo-location where the resource lives.
  /// [name] The name of the resource
  /// [properties] Defines the move collection properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  const GetMoveCollectionResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMoveCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetMoveCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: MoveCollectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

