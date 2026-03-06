// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointMysqlSetting {
  final pulumi.Input<String> afterConnectScript;
  final pulumi.Input<String> authenticationMethod;
  final pulumi.Input<bool> cleanSourceMetadataOnMismatch;
  final pulumi.Input<int> eventsPollInterval;
  final pulumi.Input<int> executeTimeout;
  final pulumi.Input<int> maxFileSize;
  final pulumi.Input<int> parallelLoadThreads;
  final pulumi.Input<String> serverTimezone;
  final pulumi.Input<String> serviceAccessRoleArn;
  final pulumi.Input<String> targetDbType;

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
  const GetEndpointMysqlSetting({
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
      afterConnectScript: pulumi.Input.fromValue(map['afterConnectScript'] as String),
      authenticationMethod: pulumi.Input.fromValue(map['authenticationMethod'] as String),
      cleanSourceMetadataOnMismatch: pulumi.Input.fromValue(map['cleanSourceMetadataOnMismatch'] as bool),
      eventsPollInterval: pulumi.Input.fromValue(map['eventsPollInterval'] as int),
      executeTimeout: pulumi.Input.fromValue(map['executeTimeout'] as int),
      maxFileSize: pulumi.Input.fromValue(map['maxFileSize'] as int),
      parallelLoadThreads: pulumi.Input.fromValue(map['parallelLoadThreads'] as int),
      serverTimezone: pulumi.Input.fromValue(map['serverTimezone'] as String),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
      targetDbType: pulumi.Input.fromValue(map['targetDbType'] as String),
    );
  }
}

