// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The ARN that uniquely identifies this database.
  final String arn;
  /// Creation time of database.
  final String createdTime;
  /// The ARN of the KMS key used to encrypt the data stored in the database.
  final String kmsKeyId;
  /// Last time database was updated.
  final String lastUpdatedTime;
  final String name;
  final String region;
  /// Total number of tables in the Timestream database.
  final int tableCount;

  /// Creates a new [GetDatabaseResult].
  /// [arn] The ARN that uniquely identifies this database.
  /// [createdTime] Creation time of database.
  /// [kmsKeyId] The ARN of the KMS key used to encrypt the data stored in the database.
  /// [lastUpdatedTime] Last time database was updated.
  /// [name] Required.
  /// [region] Required.
  /// [tableCount] Total number of tables in the Timestream database.
  const GetDatabaseResult({
    required this.arn,
    required this.createdTime,
    required this.kmsKeyId,
    required this.lastUpdatedTime,
    required this.name,
    required this.region,
    required this.tableCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdTime': createdTime,
      'kmsKeyId': kmsKeyId,
      'lastUpdatedTime': lastUpdatedTime,
      'name': name,
      'region': region,
      'tableCount': tableCount,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      arn: map['arn'] as String,
      createdTime: map['createdTime'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tableCount: map['tableCount'] as int,
    );
  }
}
