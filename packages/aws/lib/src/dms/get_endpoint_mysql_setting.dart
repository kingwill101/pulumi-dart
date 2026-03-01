// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointMysqlSetting {
  final String afterConnectScript;
  final String authenticationMethod;
  final bool cleanSourceMetadataOnMismatch;
  final int eventsPollInterval;
  final int executeTimeout;
  final int maxFileSize;
  final int parallelLoadThreads;
  final String serverTimezone;
  final String serviceAccessRoleArn;
  final String targetDbType;

  /// Creates a new [GetEndpointMysqlSetting].
  /// [afterConnectScript] Required.
  /// [authenticationMethod] Required.
  /// [cleanSourceMetadataOnMismatch] Required.
  /// [eventsPollInterval] Required.
  /// [executeTimeout] Required.
  /// [maxFileSize] Required.
  /// [parallelLoadThreads] Required.
  /// [serverTimezone] Required.
  /// [serviceAccessRoleArn] Required.
  /// [targetDbType] Required.
  GetEndpointMysqlSetting({
    required this.afterConnectScript,
    required this.authenticationMethod,
    required this.cleanSourceMetadataOnMismatch,
    required this.eventsPollInterval,
    required this.executeTimeout,
    required this.maxFileSize,
    required this.parallelLoadThreads,
    required this.serverTimezone,
    required this.serviceAccessRoleArn,
    required this.targetDbType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterConnectScript': afterConnectScript,
      'authenticationMethod': authenticationMethod,
      'cleanSourceMetadataOnMismatch': cleanSourceMetadataOnMismatch,
      'eventsPollInterval': eventsPollInterval,
      'executeTimeout': executeTimeout,
      'maxFileSize': maxFileSize,
      'parallelLoadThreads': parallelLoadThreads,
      'serverTimezone': serverTimezone,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'targetDbType': targetDbType,
    };
  }

  factory GetEndpointMysqlSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointMysqlSetting(
      afterConnectScript: map['afterConnectScript'] as String,
      authenticationMethod: map['authenticationMethod'] as String,
      cleanSourceMetadataOnMismatch: map['cleanSourceMetadataOnMismatch'] as bool,
      eventsPollInterval: map['eventsPollInterval'] as int,
      executeTimeout: map['executeTimeout'] as int,
      maxFileSize: map['maxFileSize'] as int,
      parallelLoadThreads: map['parallelLoadThreads'] as int,
      serverTimezone: map['serverTimezone'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      targetDbType: map['targetDbType'] as String,
    );
  }
}

