// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard {
  /// The ARN of the CloudWatch dashboard.
  final pulumi.Input<String>? dashboardArn;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard].
  /// [dashboardArn] The ARN of the CloudWatch dashboard.
  const ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard({
    this.dashboardArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardArn': ?dashboardArn,
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard(
      dashboardArn: (() { final guardedValue = map['dashboardArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

