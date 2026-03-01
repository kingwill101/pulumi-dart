// ignore_for_file: unused_element, unnecessary_cast


/// Describes a DocumentDB output data source.
class DocumentDbOutputDataSource {
  /// The DocumentDB account name or ID. Required on PUT (CreateOrReplace) requests.
  final String? accountId;
  /// The account key for the DocumentDB account. Required on PUT (CreateOrReplace) requests.
  final String? accountKey;
  /// The collection name pattern for the collections to be used. The collection name format can be constructed using the optional {partition} token, where partitions start from 0. See the DocumentDB section of https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for more information. Required on PUT (CreateOrReplace) requests.
  final String? collectionNamePattern;
  /// The name of the DocumentDB database. Required on PUT (CreateOrReplace) requests.
  final String? database;
  /// The name of the field in output events used to specify the primary key which insert or update operations are based on.
  final String? documentId;
  /// The name of the field in output events used to specify the key for partitioning output across collections. If 'collectionNamePattern' contains the {partition} token, this property is required to be specified.
  final String? partitionKey;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/DocumentDB'.
  final String type;

  /// Creates a new [DocumentDbOutputDataSource].
  /// [accountId] The DocumentDB account name or ID. Required on PUT (CreateOrReplace) requests.
  /// [accountKey] The account key for the DocumentDB account. Required on PUT (CreateOrReplace) requests.
  /// [collectionNamePattern] The collection name pattern for the collections to be used. The collection name format can be constructed using the optional {partition} token, where partitions start from 0. See the DocumentDB section of https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for more information. Required on PUT (CreateOrReplace) requests.
  /// [database] The name of the DocumentDB database. Required on PUT (CreateOrReplace) requests.
  /// [documentId] The name of the field in output events used to specify the primary key which insert or update operations are based on.
  /// [partitionKey] The name of the field in output events used to specify the key for partitioning output across collections. If 'collectionNamePattern' contains the {partition} token, this property is required to be specified.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  DocumentDbOutputDataSource({
    this.accountId,
    this.accountKey,
    this.collectionNamePattern,
    this.database,
    this.documentId,
    this.partitionKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountKey': ?accountKey,
      'collectionNamePattern': ?collectionNamePattern,
      'database': ?database,
      'documentId': ?documentId,
      'partitionKey': ?partitionKey,
      'type': type,
    };
  }

  factory DocumentDbOutputDataSource.fromMap(Map<String, dynamic> map) {
    return DocumentDbOutputDataSource(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      collectionNamePattern: map['collectionNamePattern'] == null ? null : map['collectionNamePattern'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      documentId: map['documentId'] == null ? null : map['documentId'] as String,
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      type: map['type'] as String,
    );
  }
}

