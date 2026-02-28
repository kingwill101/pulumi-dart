// ignore_for_file: unused_element, unnecessary_cast

import 'metric_descriptor_metadata_launch_stage.dart';

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  final String? ingestDelay;

  /// Deprecated. Must use the MetricDescriptor.launch_stage instead.
  final MetricDescriptorMetadataLaunchStage? launchStage;

  /// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  final String? samplePeriod;

  /// Creates a new [MetricDescriptorMetadata].
  /// [ingestDelay] The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  /// [launchStage] Deprecated. Must use the MetricDescriptor.launch_stage instead.
  /// [samplePeriod] The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  MetricDescriptorMetadata({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingestDelayValue = ingestDelay;
    if (ingestDelayValue != null) {
      map['ingestDelay'] = ingestDelayValue;
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = launchStageValue.value;
    }
    final samplePeriodValue = samplePeriod;
    if (samplePeriodValue != null) {
      map['samplePeriod'] = samplePeriodValue;
    }
    return map;
  }

  factory MetricDescriptorMetadata.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorMetadata(
      ingestDelay:
          map['ingestDelay'] == null ? null : map['ingestDelay'] as String,
      launchStage: map['launchStage'] == null
          ? null
          : MetricDescriptorMetadataLaunchStage.fromValue(
              map['launchStage'] as String),
      samplePeriod:
          map['samplePeriod'] == null ? null : map['samplePeriod'] as String,
    );
  }
}
