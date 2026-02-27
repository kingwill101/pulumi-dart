// ignore_for_file: unused_element, unnecessary_cast

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadataResponseServicemanagementV1 {
  /// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  final String ingestDelay;

  /// Deprecated. Must use the MetricDescriptor.launch_stage instead.
  final String launchStage;

  /// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  final String samplePeriod;

  MetricDescriptorMetadataResponseServicemanagementV1({
    required this.ingestDelay,
    required this.launchStage,
    required this.samplePeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingestDelay'] = ingestDelay;
    map['launchStage'] = launchStage;
    map['samplePeriod'] = samplePeriod;
    return map;
  }

  factory MetricDescriptorMetadataResponseServicemanagementV1.fromMap(
      Map<String, dynamic> map) {
    return MetricDescriptorMetadataResponseServicemanagementV1(
      ingestDelay: map['ingestDelay'] as String,
      launchStage: map['launchStage'] as String,
      samplePeriod: map['samplePeriod'] as String,
    );
  }
}
