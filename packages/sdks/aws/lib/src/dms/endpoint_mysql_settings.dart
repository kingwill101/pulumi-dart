// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointMysqlSettings {
  /// Script to run immediately after AWS DMS connects to the endpoint.
  final pulumi.Input<String>? afterConnectScript;
  /// Authentication method to use. Valid values: `password`, `iam`.
  final pulumi.Input<String>? authenticationMethod;
  /// Whether to clean and recreate table metadata information on the replication instance when a mismatch occurs.
  final pulumi.Input<bool>? cleanSourceMetadataOnMismatch;
  /// Time interval to check the binary log for new changes/events when the database is idle. Default is `5`.
  final pulumi.Input<int>? eventsPollInterval;
  /// Client statement timeout (in seconds) for a MySQL source endpoint.
  final pulumi.Input<int>? executeTimeout;
  /// Maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database.
  final pulumi.Input<int>? maxFileSize;
  /// Number of threads to use to load the data into the MySQL-compatible target database.
  final pulumi.Input<int>? parallelLoadThreads;
  /// Time zone for the source MySQL database.
  final pulumi.Input<String>? serverTimezone;
  /// ARN of the IAM role to authenticate when connecting to the endpoint.
  final pulumi.Input<String>? serviceAccessRoleArn;
  /// Where to migrate source tables on the target. Valid values are `specific-database` and `multiple-databases`.
  final pulumi.Input<String>? targetDbType;

  /// Creates a new [EndpointMysqlSettings].
  /// [afterConnectScript] Script to run immediately after AWS DMS connects to the endpoint.
  /// [authenticationMethod] Authentication method to use. Valid values: `password`, `iam`.
  /// [cleanSourceMetadataOnMismatch] Whether to clean and recreate table metadata information on the replication instance when a mismatch occurs.
  /// [eventsPollInterval] Time interval to check the binary log for new changes/events when the database is idle. Default is `5`.
  /// [executeTimeout] Client statement timeout (in seconds) for a MySQL source endpoint.
  /// [maxFileSize] Maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database.
  /// [parallelLoadThreads] Number of threads to use to load the data into the MySQL-compatible target database.
  /// [serverTimezone] Time zone for the source MySQL database.
  /// [serviceAccessRoleArn] ARN of the IAM role to authenticate when connecting to the endpoint.
  /// [targetDbType] Where to migrate source tables on the target. Valid values are `specific-database` and `multiple-databases`.
  const EndpointMysqlSettings({
    this.afterConnectScript,
    this.authenticationMethod,
    this.cleanSourceMetadataOnMismatch,
    this.eventsPollInterval,
    this.executeTimeout,
    this.maxFileSize,
    this.parallelLoadThreads,
    this.serverTimezone,
    this.serviceAccessRoleArn,
    this.targetDbType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterConnectScript': ?afterConnectScript,
      'authenticationMethod': ?authenticationMethod,
      'cleanSourceMetadataOnMismatch': ?cleanSourceMetadataOnMismatch,
      'eventsPollInterval': ?eventsPollInterval,
      'executeTimeout': ?executeTimeout,
      'maxFileSize': ?maxFileSize,
      'parallelLoadThreads': ?parallelLoadThreads,
      'serverTimezone': ?serverTimezone,
      'serviceAccessRoleArn': ?serviceAccessRoleArn,
      'targetDbType': ?targetDbType,
    };
  }

  factory EndpointMysqlSettings.fromMap(Map<String, dynamic> map) {
    return EndpointMysqlSettings(
      afterConnectScript: (() { final guardedValue = map['afterConnectScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationMethod: (() { final guardedValue = map['authenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cleanSourceMetadataOnMismatch: (() { final guardedValue = map['cleanSourceMetadataOnMismatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventsPollInterval: (() { final guardedValue = map['eventsPollInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      executeTimeout: (() { final guardedValue = map['executeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxFileSize: (() { final guardedValue = map['maxFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parallelLoadThreads: (() { final guardedValue = map['parallelLoadThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverTimezone: (() { final guardedValue = map['serverTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccessRoleArn: (() { final guardedValue = map['serviceAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDbType: (() { final guardedValue = map['targetDbType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

