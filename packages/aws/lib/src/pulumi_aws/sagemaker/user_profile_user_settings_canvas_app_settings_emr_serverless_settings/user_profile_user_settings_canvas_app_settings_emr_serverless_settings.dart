// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings {
  /// The Amazon Resource Name (ARN) of the AWS IAM role that is assumed for running Amazon EMR Serverless jobs in SageMaker AI Canvas. This role should have the necessary permissions to read and write data attached and a trust relationship with EMR Serverless.
  final String? executionRoleArn;

  /// Describes whether Amazon EMR Serverless job capabilities are enabled or disabled in the SageMaker AI Canvas application. Valid values are: `ENABLED` and `DISABLED`.
  final String? status;

  UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings({
    this.executionRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsEmrServerlessSettings(
      executionRoleArn: map['executionRoleArn'] == null
          ? null
          : map['executionRoleArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
