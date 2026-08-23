// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_report_configuration_report_output.dart';

class PlanReportConfiguration {
  /// Output destination for the report. See `reportOutput` Block for details.
  final pulumi.Input<List<PlanReportConfigurationReportOutput>>? reportOutputs;

  /// Creates a new [PlanReportConfiguration].
  /// [reportOutputs] Output destination for the report. See `reportOutput` Block for details.
  const PlanReportConfiguration({
    this.reportOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportOutputs': ?pulumi.Input.mapOptionalInputValue<List<PlanReportConfigurationReportOutput>, List<Map<String, dynamic>>>(reportOutputs, (value) => pulumi.Input.encodeList<PlanReportConfigurationReportOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanReportConfiguration.fromMap(Map<String, dynamic> map) {
    return PlanReportConfiguration(
      reportOutputs: (() { final guardedValue = map['reportOutputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanReportConfigurationReportOutput>(guardedValue, (value) => PlanReportConfigurationReportOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
