// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard {
  /// The ARN of the CloudWatch dashboard.
  final pulumi.Input<String>? dashboardArn;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard].
  /// [dashboardArn] The ARN of the CloudWatch dashboard.
  ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard({
    this.dashboardArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardArn': ?dashboardArn,
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard(
      dashboardArn: map['dashboardArn'] == null ? null : ((map['dashboardArn'] as String).input()).input(),
    );
  }
}

