// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationMonitoringConfigurationS3MonitoringConfiguration {
  /// The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  final pulumi.Input<String>? encryptionKeyArn;
  /// The Amazon S3 destination URI for log publishing.
  final pulumi.Input<String>? logUri;

  /// Creates a new [ApplicationMonitoringConfigurationS3MonitoringConfiguration].
  /// [encryptionKeyArn] The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  /// [logUri] The Amazon S3 destination URI for log publishing.
  ApplicationMonitoringConfigurationS3MonitoringConfiguration({
    this.encryptionKeyArn,
    this.logUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyArn': ?encryptionKeyArn,
      'logUri': ?logUri,
    };
  }

  factory ApplicationMonitoringConfigurationS3MonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationS3MonitoringConfiguration(
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logUri: (() { final guardedValue = map['logUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

