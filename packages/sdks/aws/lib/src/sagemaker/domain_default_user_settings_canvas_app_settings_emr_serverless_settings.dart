// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings {
  /// ARN of the AWS IAM role that is assumed for running Amazon EMR Serverless jobs in SageMaker AI Canvas. This role should have the necessary permissions to read and write data attached and a trust relationship with EMR Serverless.
  final pulumi.Input<String?>? executionRoleArn;
  /// Describes whether Amazon EMR Serverless job capabilities are enabled or disabled in the SageMaker AI Canvas application. Valid values are: `ENABLED` and `DISABLED`.
  final pulumi.Input<String?>? status;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings].
  /// [executionRoleArn] ARN of the AWS IAM role that is assumed for running Amazon EMR Serverless jobs in SageMaker AI Canvas. This role should have the necessary permissions to read and write data attached and a trust relationship with EMR Serverless.
  /// [status] Describes whether Amazon EMR Serverless job capabilities are enabled or disabled in the SageMaker AI Canvas application. Valid values are: `ENABLED` and `DISABLED`.
  const DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionRoleArn': ?executionRoleArn,
      'status': ?status,
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsEmrServerlessSettings(
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
