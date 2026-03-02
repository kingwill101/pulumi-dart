// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings {
  /// The Amazon Resource Name (ARN) of the AWS IAM role that is assumed for running Amazon EMR Serverless jobs in SageMaker AI Canvas. This role should have the necessary permissions to read and write data attached and a trust relationship with EMR Serverless.
  final pulumi.Input<String>? executionRoleArn;
  /// Describes whether Amazon EMR Serverless job capabilities are enabled or disabled in the SageMaker AI Canvas application. Valid values are: `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings].
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the AWS IAM role that is assumed for running Amazon EMR Serverless jobs in SageMaker AI Canvas. This role should have the necessary permissions to read and write data attached and a trust relationship with EMR Serverless.
  /// [status] Describes whether Amazon EMR Serverless job capabilities are enabled or disabled in the SageMaker AI Canvas application. Valid values are: `ENABLED` and `DISABLED`.
  UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionRoleArn': ?executionRoleArn,
      'status': ?status,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings(
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

