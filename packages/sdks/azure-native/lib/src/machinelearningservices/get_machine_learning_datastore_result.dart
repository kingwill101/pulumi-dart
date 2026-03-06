// ignore_for_file: unused_element, unnecessary_cast

import 'datastore_response.dart';
import 'identity_response.dart';
import 'sku_response.dart';

/// Result data returned by getMachineLearningDatastore.
class GetMachineLearningDatastoreResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the resource ID.
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// Specifies the location of the resource.
  final String? location;
  /// Specifies the name of the resource.
  final String name;
  /// Datastore properties
  final DatastoreResponse properties;
  /// The sku of the workspace.
  final SkuResponse? sku;
  /// Contains resource tags defined as key/value pairs.
  final Map<String, String>? tags;
  /// Specifies the type of the resource.
  final String type;

  /// Creates a new [GetMachineLearningDatastoreResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Specifies the resource ID.
  /// [identity] The identity of the resource.
  /// [location] Specifies the location of the resource.
  /// [name] Specifies the name of the resource.
  /// [properties] Datastore properties
  /// [sku] The sku of the workspace.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [type] Specifies the type of the resource.
  const GetMachineLearningDatastoreResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMachineLearningDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetMachineLearningDatastoreResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: DatastoreResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

