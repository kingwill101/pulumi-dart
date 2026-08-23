// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration {
  /// Boolean whether Amazon S3 logging is enabled for the workgroup.
  final pulumi.Input<bool> enabled;
  /// KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  final pulumi.Input<String>? kmsKey;
  /// Amazon S3 destination URI (`s3://bucket/prefix`) for log publishing.
  final pulumi.Input<String>? logLocation;

  /// Creates a new [WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration].
  /// [enabled] Boolean whether Amazon S3 logging is enabled for the workgroup.
  /// [kmsKey] KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  /// [logLocation] Amazon S3 destination URI (`s3://bucket/prefix`) for log publishing.
  const WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration({
    required this.enabled,
    this.kmsKey,
    this.logLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kmsKey': ?kmsKey,
      'logLocation': ?logLocation,
    };
  }

  factory WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLocation: (() { final guardedValue = map['logLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
