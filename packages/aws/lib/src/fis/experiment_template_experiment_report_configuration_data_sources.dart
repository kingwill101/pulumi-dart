// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_experiment_report_configuration_data_sources_cloudwatch_dashboard.dart';

class ExperimentTemplateExperimentReportConfigurationDataSources {
  /// The data sources for the experiment report. See below.
  final List<
    ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard
  >?
  cloudwatchDashboards;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationDataSources].
  /// [cloudwatchDashboards] The data sources for the experiment report. See below.
  ExperimentTemplateExperimentReportConfigurationDataSources({
    this.cloudwatchDashboards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchDashboards': ?cloudwatchDashboards == null
          ? null
          : pulumi.Input.encodeList<
              ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard,
              Map<String, dynamic>
            >(cloudwatchDashboards!, (value) => value.toMap()),
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationDataSources.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentTemplateExperimentReportConfigurationDataSources(
      cloudwatchDashboards: map['cloudwatchDashboards'] == null
          ? null
          : pulumi.Input.decodeList<
              ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard
            >(
              map['cloudwatchDashboards'],
              (value) =>
                  ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
