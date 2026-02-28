// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard {
  /// The ARN of the CloudWatch dashboard.
  final String? dashboardArn;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard].
  /// [dashboardArn] The ARN of the CloudWatch dashboard.
  ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard({
    this.dashboardArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dashboardArnValue = dashboardArn;
    if (dashboardArnValue != null) {
      map['dashboardArn'] = dashboardArnValue;
    }
    return map;
  }

  factory ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard(
      dashboardArn:
          map['dashboardArn'] == null ? null : map['dashboardArn'] as String,
    );
  }
}
