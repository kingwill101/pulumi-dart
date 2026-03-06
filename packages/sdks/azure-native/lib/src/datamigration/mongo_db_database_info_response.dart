// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_collection_info_response.dart';

/// Describes a database within a MongoDB data source
class MongoDbDatabaseInfoResponse {
  /// The average document size, or -1 if the average size is unknown
  final pulumi.Input<double> averageDocumentSize;
  /// A list of supported collections in a MongoDB database
  final pulumi.Input<List<MongoDbCollectionInfoResponse>> collections;
  /// The estimated total data size, in bytes, or -1 if the size is unknown.
  final pulumi.Input<double> dataSize;
  /// The estimated total number of documents, or -1 if the document count is unknown
  final pulumi.Input<double> documentCount;
  /// The unqualified name of the database or collection
  final pulumi.Input<String> name;
  /// The qualified name of the database or collection. For a collection, this is the database-qualified name.
  final pulumi.Input<String> qualifiedName;
  /// Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  final pulumi.Input<bool> supportsSharding;

  /// Creates a new [MongoDbDatabaseInfoResponse].
  /// [averageDocumentSize] The average document size, or -1 if the average size is unknown
  /// [collections] A list of supported collections in a MongoDB database
  /// [dataSize] The estimated total data size, in bytes, or -1 if the size is unknown.
  /// [documentCount] The estimated total number of documents, or -1 if the document count is unknown
  /// [name] The unqualified name of the database or collection
  /// [qualifiedName] The qualified name of the database or collection. For a collection, this is the database-qualified name.
  /// [supportsSharding] Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  const MongoDbDatabaseInfoResponse({
    required this.averageDocumentSize,
    required this.collections,
    required this.dataSize,
    required this.documentCount,
    required this.name,
    required this.qualifiedName,
    required this.supportsSharding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageDocumentSize': averageDocumentSize,
      'collections': pulumi.Input.mapInputValue<List<MongoDbCollectionInfoResponse>, List<Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeList<MongoDbCollectionInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSize': dataSize,
      'documentCount': documentCount,
      'name': name,
      'qualifiedName': qualifiedName,
      'supportsSharding': supportsSharding,
    };
  }

  factory MongoDbDatabaseInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbDatabaseInfoResponse(
      averageDocumentSize: pulumi.Input.fromValue(map['averageDocumentSize'] as double),
      collections: pulumi.Input.fromValue(pulumi.Input.decodeList<MongoDbCollectionInfoResponse>(map['collections']!, (value) => MongoDbCollectionInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dataSize: pulumi.Input.fromValue(map['dataSize'] as double),
      documentCount: pulumi.Input.fromValue(map['documentCount'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
      qualifiedName: pulumi.Input.fromValue(map['qualifiedName'] as String),
      supportsSharding: pulumi.Input.fromValue(map['supportsSharding'] as bool),
    );
  }
}

