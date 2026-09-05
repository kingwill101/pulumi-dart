// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessCollection.
class GetServerlessCollectionResult {
  /// ARN of the collection.
  final String? arn;
  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  final String? collectionEndpoint;
  /// Date the Collection was created.
  final String? createdDate;
  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  final String? dashboardEndpoint;
  /// Description of the collection.
  final String? description;
  /// A failure code associated with the collection.
  final String? failureCode;
  final String? failureMessage;
  final String? id;
  /// The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  final String? kmsKeyArn;
  /// Date the Collection was last modified.
  final String? lastModifiedDate;
  final String? name;
  final String? region;
  /// Indicates whether standby replicas should be used for a collection.
  final String? standbyReplicas;
  /// A map of tags to assign to the collection.
  final Map<String, String>? tags;
  /// Type of collection.
  final String? type;

  /// Creates a new [GetServerlessCollectionResult].
  /// [arn] ARN of the collection.
  /// [collectionEndpoint] Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  /// [createdDate] Date the Collection was created.
  /// [dashboardEndpoint] Collection-specific endpoint used to access OpenSearch Dashboards.
  /// [description] Description of the collection.
  /// [failureCode] A failure code associated with the collection.
  /// [failureMessage] Optional.
  /// [id] Optional.
  /// [kmsKeyArn] The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  /// [lastModifiedDate] Date the Collection was last modified.
  /// [name] Optional.
  /// [region] Optional.
  /// [standbyReplicas] Indicates whether standby replicas should be used for a collection.
  /// [tags] A map of tags to assign to the collection.
  /// [type] Type of collection.
  const GetServerlessCollectionResult({
    this.arn,
    this.collectionEndpoint,
    this.createdDate,
    this.dashboardEndpoint,
    this.description,
    this.failureCode,
    this.failureMessage,
    this.id,
    this.kmsKeyArn,
    this.lastModifiedDate,
    this.name,
    this.region,
    this.standbyReplicas,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'collectionEndpoint': ?collectionEndpoint,
      'createdDate': ?createdDate,
      'dashboardEndpoint': ?dashboardEndpoint,
      'description': ?description,
      'failureCode': ?failureCode,
      'failureMessage': ?failureMessage,
      'id': ?id,
      'kmsKeyArn': ?kmsKeyArn,
      'lastModifiedDate': ?lastModifiedDate,
      'name': ?name,
      'region': ?region,
      'standbyReplicas': ?standbyReplicas,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetServerlessCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionEndpoint: (() { final guardedValue = map['collectionEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dashboardEndpoint: (() { final guardedValue = map['dashboardEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureCode: (() { final guardedValue = map['failureCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureMessage: (() { final guardedValue = map['failureMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyReplicas: (() { final guardedValue = map['standbyReplicas']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
