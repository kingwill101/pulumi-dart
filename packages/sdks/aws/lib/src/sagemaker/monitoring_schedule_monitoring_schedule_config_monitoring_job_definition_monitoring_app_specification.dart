// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification {
  /// List of arguments for the container used to run the monitoring job.
  final pulumi.Input<List<String>>? containerArguments;

  /// Entrypoint for the container used to run the monitoring job.
  final pulumi.Input<List<String>>? containerEntrypoints;

  /// Container image to be run by the monitoring job.
  final pulumi.Input<String> imageUri;

  /// Script that is called after analysis has been performed.
  final pulumi.Input<String>? postAnalyticsProcessorSourceUri;

  /// Script that is called per row prior to running analysis.
  final pulumi.Input<String>? recordPreprocessorSourceUri;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification].
  /// [containerArguments] List of arguments for the container used to run the monitoring job.
  /// [containerEntrypoints] Entrypoint for the container used to run the monitoring job.
  /// [imageUri] Container image to be run by the monitoring job.
  /// [postAnalyticsProcessorSourceUri] Script that is called after analysis has been performed.
  /// [recordPreprocessorSourceUri] Script that is called per row prior to running analysis.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification({
    this.containerArguments,
    this.containerEntrypoints,
    required this.imageUri,
    this.postAnalyticsProcessorSourceUri,
    this.recordPreprocessorSourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerArguments': ?containerArguments,
      'containerEntrypoints': ?containerEntrypoints,
      'imageUri': imageUri,
      'postAnalyticsProcessorSourceUri': ?postAnalyticsProcessorSourceUri,
      'recordPreprocessorSourceUri': ?recordPreprocessorSourceUri,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification(
      containerArguments: (() {
        final guardedValue = map['containerArguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      containerEntrypoints: (() {
        final guardedValue = map['containerEntrypoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      postAnalyticsProcessorSourceUri: (() {
        final guardedValue = map['postAnalyticsProcessorSourceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordPreprocessorSourceUri: (() {
        final guardedValue = map['recordPreprocessorSourceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
