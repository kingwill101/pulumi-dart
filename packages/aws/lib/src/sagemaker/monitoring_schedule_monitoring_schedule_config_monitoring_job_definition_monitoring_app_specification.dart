// ignore_for_file: unused_element, unnecessary_cast


class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification {
  /// List of arguments for the container used to run the monitoring job.
  final List<String>? containerArguments;
  /// Entrypoint for the container used to run the monitoring job.
  final List<String>? containerEntrypoints;
  /// Container image to be run by the monitoring job.
  final String imageUri;
  /// Script that is called after analysis has been performed.
  final String? postAnalyticsProcessorSourceUri;
  /// Script that is called per row prior to running analysis.
  final String? recordPreprocessorSourceUri;

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

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification(
      containerArguments: map['containerArguments'] == null ? null : (map['containerArguments'] as List).cast<String>(),
      containerEntrypoints: map['containerEntrypoints'] == null ? null : (map['containerEntrypoints'] as List).cast<String>(),
      imageUri: map['imageUri'] as String,
      postAnalyticsProcessorSourceUri: map['postAnalyticsProcessorSourceUri'] == null ? null : map['postAnalyticsProcessorSourceUri'] as String,
      recordPreprocessorSourceUri: map['recordPreprocessorSourceUri'] == null ? null : map['recordPreprocessorSourceUri'] as String,
    );
  }
}

