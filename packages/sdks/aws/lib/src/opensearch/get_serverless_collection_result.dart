// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessCollection.
class GetServerlessCollectionResult {
  /// Amazon Resource Name (ARN) of the collection.
  final String arn;
  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  final String collectionEndpoint;
  /// Date the Collection was created.
  final String createdDate;
  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  final String dashboardEndpoint;
  /// Description of the collection.
  final String description;
  /// A failure code associated with the collection.
  final String failureCode;
  final String failureMessage;
  final String id;
  /// The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  final String kmsKeyArn;
  /// Date the Collection was last modified.
  final String lastModifiedDate;
  final String name;
  final String region;
  /// Indicates whether standby replicas should be used for a collection.
  final String standbyReplicas;
  /// A map of tags to assign to the collection.
  final Map<String, String> tags;
  /// Type of collection.
  final String type;

  /// Creates a new [GetServerlessCollectionResult].
  /// [arn] Amazon Resource Name (ARN) of the collection.
  /// [collectionEndpoint] Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  /// [createdDate] Date the Collection was created.
  /// [dashboardEndpoint] Collection-specific endpoint used to access OpenSearch Dashboards.
  /// [description] Description of the collection.
  /// [failureCode] A failure code associated with the collection.
  /// [failureMessage] Required.
  /// [id] Required.
  /// [kmsKeyArn] The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  /// [lastModifiedDate] Date the Collection was last modified.
  /// [name] Required.
  /// [region] Required.
  /// [standbyReplicas] Indicates whether standby replicas should be used for a collection.
  /// [tags] A map of tags to assign to the collection.
  /// [type] Type of collection.
  const GetServerlessCollectionResult({
    required this.arn,
    required this.collectionEndpoint,
    required this.createdDate,
    required this.dashboardEndpoint,
    required this.description,
    required this.failureCode,
    required this.failureMessage,
    required this.id,
    required this.kmsKeyArn,
    required this.lastModifiedDate,
    required this.name,
    required this.region,
    required this.standbyReplicas,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'collectionEndpoint': collectionEndpoint,
      'createdDate': createdDate,
      'dashboardEndpoint': dashboardEndpoint,
      'description': description,
      'failureCode': failureCode,
      'failureMessage': failureMessage,
      'id': id,
      'kmsKeyArn': kmsKeyArn,
      'lastModifiedDate': lastModifiedDate,
      'name': name,
      'region': region,
      'standbyReplicas': standbyReplicas,
      'tags': tags,
      'type': type,
    };
  }

  factory GetServerlessCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionResult(
      arn: map['arn'] as String,
      collectionEndpoint: map['collectionEndpoint'] as String,
      createdDate: map['createdDate'] as String,
      dashboardEndpoint: map['dashboardEndpoint'] as String,
      description: map['description'] as String,
      failureCode: map['failureCode'] as String,
      failureMessage: map['failureMessage'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      standbyReplicas: map['standbyReplicas'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
