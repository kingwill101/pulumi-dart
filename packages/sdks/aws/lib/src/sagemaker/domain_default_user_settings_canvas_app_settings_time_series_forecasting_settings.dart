// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings {
  /// The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the [AmazonSageMakerCanvasForecastAccess](https://docs.aws.amazon.com/sagemaker/latest/dg/security-iam-awsmanpol-canvas.html#security-iam-awsmanpol-AmazonSageMakerCanvasForecastAccess) policy attached and forecast.amazonaws.com added in the trust relationship as a service principal.
  final pulumi.Input<String>? amazonForecastRoleArn;
  /// Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings].
  /// [amazonForecastRoleArn] The IAM role that Canvas passes to Amazon Forecast for time series forecasting. By default, Canvas uses the execution role specified in the UserProfile that launches the Canvas app. If an execution role is not specified in the UserProfile, Canvas uses the execution role specified in the Domain that owns the UserProfile. To allow time series forecasting, this IAM role should have the [AmazonSageMakerCanvasForecastAccess](https://docs.aws.amazon.com/sagemaker/latest/dg/security-iam-awsmanpol-canvas.html#security-iam-awsmanpol-AmazonSageMakerCanvasForecastAccess) policy attached and forecast.amazonaws.com added in the trust relationship as a service principal.
  /// [status] Describes whether time series forecasting is enabled or disabled in the Canvas app. Valid values are `ENABLED` and `DISABLED`.
  DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings({
    this.amazonForecastRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonForecastRoleArn': ?amazonForecastRoleArn,
      'status': ?status,
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsTimeSeriesForecastingSettings(
      amazonForecastRoleArn: map['amazonForecastRoleArn'] == null ? null : (map['amazonForecastRoleArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

