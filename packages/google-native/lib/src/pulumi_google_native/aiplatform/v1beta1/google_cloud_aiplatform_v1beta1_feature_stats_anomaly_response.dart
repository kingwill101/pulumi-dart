// ignore_for_file: unused_element, unnecessary_cast

/// Stats and Anomaly generated at specific timestamp for specific Feature. The start_time and end_time are used to define the time range of the dataset that current stats belongs to, e.g. prediction traffic is bucketed into prediction datasets by time window. If the Dataset is not defined by time window, start_time = end_time. Timestamp of the stats and anomalies always refers to end_time. Raw stats and anomalies are stored in stats_uri or anomaly_uri in the tensorflow defined protos. Field data_stats contains almost identical information with the raw stats in Vertex AI defined proto, for UI to display.
class GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse {
  /// This is the threshold used when detecting anomalies. The threshold can be changed by user, so this one might be different from ThresholdConfig.value.
  final double anomalyDetectionThreshold;

  /// Path of the anomaly file for current feature values in Cloud Storage bucket. Format: gs:////anomalies. Example: gs://monitoring_bucket/feature_name/anomalies. Stats are stored as binary format with Protobuf message Anoamlies are stored as binary format with Protobuf message [tensorflow.metadata.v0.AnomalyInfo] (https://github.com/tensorflow/metadata/blob/master/tensorflow_metadata/proto/v0/anomalies.proto).
  final String anomalyUri;

  /// Deviation from the current stats to baseline stats. 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence.
  final double distributionDeviation;

  /// The end timestamp of window where stats were generated. For objectives where time window doesn't make sense (e.g. Featurestore Snapshot Monitoring), end_time indicates the timestamp of the data used to generate stats (e.g. timestamp we take snapshots for feature values).
  final String endTime;

  /// Feature importance score, only populated when cross-feature monitoring is enabled. For now only used to represent feature attribution score within range [0, 1] for ModelDeploymentMonitoringObjectiveType.FEATURE_ATTRIBUTION_SKEW and ModelDeploymentMonitoringObjectiveType.FEATURE_ATTRIBUTION_DRIFT.
  final double score;

  /// The start timestamp of window where stats were generated. For objectives where time window doesn't make sense (e.g. Featurestore Snapshot Monitoring), start_time is only used to indicate the monitoring intervals, so it always equals to (end_time - monitoring_interval).
  final String startTime;

  /// Path of the stats file for current feature values in Cloud Storage bucket. Format: gs:////stats. Example: gs://monitoring_bucket/feature_name/stats. Stats are stored as binary format with Protobuf message [tensorflow.metadata.v0.FeatureNameStatistics](https://github.com/tensorflow/metadata/blob/master/tensorflow_metadata/proto/v0/statistics.proto).
  final String statsUri;

  GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse({
    required this.anomalyDetectionThreshold,
    required this.anomalyUri,
    required this.distributionDeviation,
    required this.endTime,
    required this.score,
    required this.startTime,
    required this.statsUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anomalyDetectionThreshold'] = anomalyDetectionThreshold;
    map['anomalyUri'] = anomalyUri;
    map['distributionDeviation'] = distributionDeviation;
    map['endTime'] = endTime;
    map['score'] = score;
    map['startTime'] = startTime;
    map['statsUri'] = statsUri;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse(
      anomalyDetectionThreshold: map['anomalyDetectionThreshold'] as double,
      anomalyUri: map['anomalyUri'] as String,
      distributionDeviation: map['distributionDeviation'] as double,
      endTime: map['endTime'] as String,
      score: map['score'] as double,
      startTime: map['startTime'] as String,
      statsUri: map['statsUri'] as String,
    );
  }
}
