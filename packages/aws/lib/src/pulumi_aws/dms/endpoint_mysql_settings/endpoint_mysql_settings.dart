// ignore_for_file: unused_element, unnecessary_cast

class EndpointMysqlSettings {
  /// Script to run immediately after AWS DMS connects to the endpoint.
  final String? afterConnectScript;

  /// Authentication method to use. Valid values: `password`, `iam`.
  final String? authenticationMethod;

  /// Whether to clean and recreate table metadata information on the replication instance when a mismatch occurs.
  final bool? cleanSourceMetadataOnMismatch;

  /// Time interval to check the binary log for new changes/events when the database is idle. Default is `5`.
  final int? eventsPollInterval;

  /// Client statement timeout (in seconds) for a MySQL source endpoint.
  final int? executeTimeout;

  /// Maximum size (in KB) of any .csv file used to transfer data to a MySQL-compatible database.
  final int? maxFileSize;

  /// Number of threads to use to load the data into the MySQL-compatible target database.
  final int? parallelLoadThreads;

  /// Time zone for the source MySQL database.
  final String? serverTimezone;

  /// ARN of the IAM role to authenticate when connecting to the endpoint.
  final String? serviceAccessRoleArn;

  /// Where to migrate source tables on the target. Valid values are `specific-database` and `multiple-databases`.
  final String? targetDbType;

  EndpointMysqlSettings({
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
    final map = <String, dynamic>{};
    final afterConnectScriptValue = afterConnectScript;
    if (afterConnectScriptValue != null) {
      map['afterConnectScript'] = afterConnectScriptValue;
    }
    final authenticationMethodValue = authenticationMethod;
    if (authenticationMethodValue != null) {
      map['authenticationMethod'] = authenticationMethodValue;
    }
    final cleanSourceMetadataOnMismatchValue = cleanSourceMetadataOnMismatch;
    if (cleanSourceMetadataOnMismatchValue != null) {
      map['cleanSourceMetadataOnMismatch'] = cleanSourceMetadataOnMismatchValue;
    }
    final eventsPollIntervalValue = eventsPollInterval;
    if (eventsPollIntervalValue != null) {
      map['eventsPollInterval'] = eventsPollIntervalValue;
    }
    final executeTimeoutValue = executeTimeout;
    if (executeTimeoutValue != null) {
      map['executeTimeout'] = executeTimeoutValue;
    }
    final maxFileSizeValue = maxFileSize;
    if (maxFileSizeValue != null) {
      map['maxFileSize'] = maxFileSizeValue;
    }
    final parallelLoadThreadsValue = parallelLoadThreads;
    if (parallelLoadThreadsValue != null) {
      map['parallelLoadThreads'] = parallelLoadThreadsValue;
    }
    final serverTimezoneValue = serverTimezone;
    if (serverTimezoneValue != null) {
      map['serverTimezone'] = serverTimezoneValue;
    }
    final serviceAccessRoleArnValue = serviceAccessRoleArn;
    if (serviceAccessRoleArnValue != null) {
      map['serviceAccessRoleArn'] = serviceAccessRoleArnValue;
    }
    final targetDbTypeValue = targetDbType;
    if (targetDbTypeValue != null) {
      map['targetDbType'] = targetDbTypeValue;
    }
    return map;
  }

  factory EndpointMysqlSettings.fromMap(Map<String, dynamic> map) {
    return EndpointMysqlSettings(
      afterConnectScript: map['afterConnectScript'] == null
          ? null
          : map['afterConnectScript'] as String,
      authenticationMethod: map['authenticationMethod'] == null
          ? null
          : map['authenticationMethod'] as String,
      cleanSourceMetadataOnMismatch:
          map['cleanSourceMetadataOnMismatch'] == null
              ? null
              : map['cleanSourceMetadataOnMismatch'] as bool,
      eventsPollInterval: map['eventsPollInterval'] == null
          ? null
          : map['eventsPollInterval'] as int,
      executeTimeout:
          map['executeTimeout'] == null ? null : map['executeTimeout'] as int,
      maxFileSize:
          map['maxFileSize'] == null ? null : map['maxFileSize'] as int,
      parallelLoadThreads: map['parallelLoadThreads'] == null
          ? null
          : map['parallelLoadThreads'] as int,
      serverTimezone: map['serverTimezone'] == null
          ? null
          : map['serverTimezone'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null
          ? null
          : map['serviceAccessRoleArn'] as String,
      targetDbType:
          map['targetDbType'] == null ? null : map['targetDbType'] as String,
    );
  }
}
