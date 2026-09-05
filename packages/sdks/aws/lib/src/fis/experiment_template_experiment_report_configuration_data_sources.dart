// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_experiment_report_configuration_data_sources_cloudwatch_dashboard.dart';

class ExperimentTemplateExperimentReportConfigurationDataSources {
  /// Data sources for the experiment report. See below.
  final pulumi.Input<List<ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard>?>? cloudwatchDashboards;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationDataSources].
  /// [cloudwatchDashboards] Data sources for the experiment report. See below.
  const ExperimentTemplateExperimentReportConfigurationDataSources({
    this.cloudwatchDashboards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchDashboards': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard>, List<Map<String, dynamic>>>(cloudwatchDashboards, (value) => pulumi.Input.encodeList<ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentTemplateExperimentReportConfigurationDataSources.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateExperimentReportConfigurationDataSources(
      cloudwatchDashboards: (() { final guardedValue = map['cloudwatchDashboards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard>(guardedValue, (value) => ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
