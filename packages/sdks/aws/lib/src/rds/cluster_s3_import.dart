// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterS3Import {
  /// Bucket name where your backup is stored
  final pulumi.Input<String> bucketName;
  /// Can be blank, but is the path to your backup
  final pulumi.Input<String>? bucketPrefix;
  /// Role applied to load the data.
  final pulumi.Input<String> ingestionRole;
  /// Source engine for the backup
  final pulumi.Input<String> sourceEngine;
  /// Version of the source engine used to make the backup
  ///
  /// This will not recreate the resource if the S3 object changes in some way. It's only used to initialize the database. This only works currently with the aurora engine. See AWS for currently supported engines and options. See [Aurora S3 Migration Docs](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3).
  final pulumi.Input<String> sourceEngineVersion;

  /// Creates a new [ClusterS3Import].
  /// [bucketName] Bucket name where your backup is stored
  /// [bucketPrefix] Can be blank, but is the path to your backup
  /// [ingestionRole] Role applied to load the data.
  /// [sourceEngine] Source engine for the backup
  /// [sourceEngineVersion] Version of the source engine used to make the backup
  const ClusterS3Import({
    required this.bucketName,
    this.bucketPrefix,
    required this.ingestionRole,
    required this.sourceEngine,
    required this.sourceEngineVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      'ingestionRole': ingestionRole,
      'sourceEngine': sourceEngine,
      'sourceEngineVersion': sourceEngineVersion,
    };
  }

  factory ClusterS3Import.fromMap(Map<String, dynamic> map) {
    return ClusterS3Import(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionRole: pulumi.Input.fromValue(map['ingestionRole'] as String),
      sourceEngine: pulumi.Input.fromValue(map['sourceEngine'] as String),
      sourceEngineVersion: pulumi.Input.fromValue(map['sourceEngineVersion'] as String),
    );
  }
}

