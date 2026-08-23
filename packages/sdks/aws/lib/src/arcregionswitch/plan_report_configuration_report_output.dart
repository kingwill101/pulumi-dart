// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_report_configuration_report_output_s3_configuration.dart';

class PlanReportConfigurationReportOutput {
  /// S3 output configuration. See `s3Configuration` Block for details.
  final pulumi.Input<List<PlanReportConfigurationReportOutputS3Configuration>>? s3Configurations;

  /// Creates a new [PlanReportConfigurationReportOutput].
  /// [s3Configurations] S3 output configuration. See `s3Configuration` Block for details.
  const PlanReportConfigurationReportOutput({
    this.s3Configurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configurations': ?pulumi.Input.mapOptionalInputValue<List<PlanReportConfigurationReportOutputS3Configuration>, List<Map<String, dynamic>>>(s3Configurations, (value) => pulumi.Input.encodeList<PlanReportConfigurationReportOutputS3Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanReportConfigurationReportOutput.fromMap(Map<String, dynamic> map) {
    return PlanReportConfigurationReportOutput(
      s3Configurations: (() { final guardedValue = map['s3Configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanReportConfigurationReportOutputS3Configuration>(guardedValue, (value) => PlanReportConfigurationReportOutputS3Configuration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
