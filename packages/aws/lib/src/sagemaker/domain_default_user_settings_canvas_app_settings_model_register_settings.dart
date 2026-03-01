// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings {
  /// The Amazon Resource Name (ARN) of the SageMaker AI model registry account. Required only to register model versions created by a different SageMaker AI Canvas AWS account than the AWS account in which SageMaker AI model registry is set up.
  final String? crossAccountModelRegisterRoleArn;

  /// Describes whether the integration to the model registry is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings].
  /// [crossAccountModelRegisterRoleArn] The Amazon Resource Name (ARN) of the SageMaker AI model registry account. Required only to register model versions created by a different SageMaker AI Canvas AWS account than the AWS account in which SageMaker AI model registry is set up.
  /// [status] Describes whether the integration to the model registry is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings({
    this.crossAccountModelRegisterRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountModelRegisterRoleArn': ?crossAccountModelRegisterRoleArn,
      'status': ?status,
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsCanvasAppSettingsModelRegisterSettings(
      crossAccountModelRegisterRoleArn:
          map['crossAccountModelRegisterRoleArn'] == null
          ? null
          : map['crossAccountModelRegisterRoleArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
