// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceS3Import {
  /// The bucket name where your backup is stored
  final pulumi.Input<String> bucketName;
  /// Can be blank, but is the path to your backup
  final pulumi.Input<String>? bucketPrefix;
  /// Role applied to load the data.
  final pulumi.Input<String> ingestionRole;
  /// Source engine for the backup
  final pulumi.Input<String> sourceEngine;
  /// Version of the source engine used to make the backup
  ///
  /// This will not recreate the resource if the S3 object changes in some way.  It's only used to initialize the database.
  final pulumi.Input<String> sourceEngineVersion;

  /// Creates a new [InstanceS3Import].
  /// [bucketName] The bucket name where your backup is stored
  /// [bucketPrefix] Can be blank, but is the path to your backup
  /// [ingestionRole] Role applied to load the data.
  /// [sourceEngine] Source engine for the backup
  /// [sourceEngineVersion] Version of the source engine used to make the backup
  InstanceS3Import({
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

  factory InstanceS3Import.fromMap(Map<String, dynamic> map) {
    return InstanceS3Import(
      bucketName: (map['bucketName'] as String).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix'] as String).input(),
      ingestionRole: (map['ingestionRole'] as String).input(),
      sourceEngine: (map['sourceEngine'] as String).input(),
      sourceEngineVersion: (map['sourceEngineVersion'] as String).input(),
    );
  }
}

