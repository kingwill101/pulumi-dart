// ignore_for_file: unused_element, unnecessary_cast

class ClusterS3Import {
  /// Bucket name where your backup is stored
  final String bucketName;

  /// Can be blank, but is the path to your backup
  final String? bucketPrefix;

  /// Role applied to load the data.
  final String ingestionRole;

  /// Source engine for the backup
  final String sourceEngine;

  /// Version of the source engine used to make the backup
  ///
  /// This will not recreate the resource if the S3 object changes in some way. It's only used to initialize the database. This only works currently with the aurora engine. See AWS for currently supported engines and options. See [Aurora S3 Migration Docs](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3).
  final String sourceEngineVersion;

  ClusterS3Import({
    required this.bucketName,
    this.bucketPrefix,
    required this.ingestionRole,
    required this.sourceEngine,
    required this.sourceEngineVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    map['ingestionRole'] = ingestionRole;
    map['sourceEngine'] = sourceEngine;
    map['sourceEngineVersion'] = sourceEngineVersion;
    return map;
  }

  factory ClusterS3Import.fromMap(Map<String, dynamic> map) {
    return ClusterS3Import(
      bucketName: map['bucketName'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      ingestionRole: map['ingestionRole'] as String,
      sourceEngine: map['sourceEngine'] as String,
      sourceEngineVersion: map['sourceEngineVersion'] as String,
    );
  }
}
