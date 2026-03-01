// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_collection_info_response.dart';

/// Describes a database within a MongoDB data source
class MongoDbDatabaseInfoResponse {
  /// The average document size, or -1 if the average size is unknown
  final double averageDocumentSize;
  /// A list of supported collections in a MongoDB database
  final List<MongoDbCollectionInfoResponse> collections;
  /// The estimated total data size, in bytes, or -1 if the size is unknown.
  final double dataSize;
  /// The estimated total number of documents, or -1 if the document count is unknown
  final double documentCount;
  /// The unqualified name of the database or collection
  final String name;
  /// The qualified name of the database or collection. For a collection, this is the database-qualified name.
  final String qualifiedName;
  /// Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  final bool supportsSharding;

  /// Creates a new [MongoDbDatabaseInfoResponse].
  /// [averageDocumentSize] The average document size, or -1 if the average size is unknown
  /// [collections] A list of supported collections in a MongoDB database
  /// [dataSize] The estimated total data size, in bytes, or -1 if the size is unknown.
  /// [documentCount] The estimated total number of documents, or -1 if the document count is unknown
  /// [name] The unqualified name of the database or collection
  /// [qualifiedName] The qualified name of the database or collection. For a collection, this is the database-qualified name.
  /// [supportsSharding] Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  MongoDbDatabaseInfoResponse({
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
      'collections': pulumi.Input.encodeList<MongoDbCollectionInfoResponse, Map<String, dynamic>>(collections, (value) => value.toMap()),
      'dataSize': dataSize,
      'documentCount': documentCount,
      'name': name,
      'qualifiedName': qualifiedName,
      'supportsSharding': supportsSharding,
    };
  }

  factory MongoDbDatabaseInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbDatabaseInfoResponse(
      averageDocumentSize: map['averageDocumentSize'] as double,
      collections: pulumi.Input.decodeList<MongoDbCollectionInfoResponse>(map['collections'], (value) => MongoDbCollectionInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataSize: map['dataSize'] as double,
      documentCount: map['documentCount'] as double,
      name: map['name'] as String,
      qualifiedName: map['qualifiedName'] as String,
      supportsSharding: map['supportsSharding'] as bool,
    );
  }
}

