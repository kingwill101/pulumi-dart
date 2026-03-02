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
  GetMachineLearningDatastoreResult({
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
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMachineLearningDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetMachineLearningDatastoreResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: DatastoreResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

