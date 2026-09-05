// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The ARN that uniquely identifies this database.
  final String? arn;
  /// Creation time of database.
  final String? createdTime;
  /// The ARN of the KMS key used to encrypt the data stored in the database.
  final String? kmsKeyId;
  /// Last time database was updated.
  final String? lastUpdatedTime;
  final String? name;
  final String? region;
  /// Total number of tables in the Timestream database.
  final int? tableCount;

  /// Creates a new [GetDatabaseResult].
  /// [arn] The ARN that uniquely identifies this database.
  /// [createdTime] Creation time of database.
  /// [kmsKeyId] The ARN of the KMS key used to encrypt the data stored in the database.
  /// [lastUpdatedTime] Last time database was updated.
  /// [name] Optional.
  /// [region] Optional.
  /// [tableCount] Total number of tables in the Timestream database.
  const GetDatabaseResult({
    this.arn,
    this.createdTime,
    this.kmsKeyId,
    this.lastUpdatedTime,
    this.name,
    this.region,
    this.tableCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTime': ?createdTime,
      'kmsKeyId': ?kmsKeyId,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'region': ?region,
      'tableCount': ?tableCount,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableCount: (() { final guardedValue = map['tableCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
