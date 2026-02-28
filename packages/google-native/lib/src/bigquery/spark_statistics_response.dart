// ignore_for_file: unused_element, unnecessary_cast

import 'spark_logging_info_response.dart';

class SparkStatisticsResponse {
  /// Endpoints generated for the Spark job.
  final Map<String, String> endpoints;

  /// Logging info is used to generate a link to Cloud Logging.
  final SparkLoggingInfoResponse loggingInfo;

  /// Spark job id if a Spark job is created successfully.
  final String sparkJobId;

  /// Location where the Spark job is executed.
  final String sparkJobLocation;

  /// Creates a new [SparkStatisticsResponse].
  /// [endpoints] Endpoints generated for the Spark job.
  /// [loggingInfo] Logging info is used to generate a link to Cloud Logging.
  /// [sparkJobId] Spark job id if a Spark job is created successfully.
  /// [sparkJobLocation] Location where the Spark job is executed.
  SparkStatisticsResponse({
    required this.endpoints,
    required this.loggingInfo,
    required this.sparkJobId,
    required this.sparkJobLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoints'] = endpoints;
    map['loggingInfo'] = loggingInfo.toMap();
    map['sparkJobId'] = sparkJobId;
    map['sparkJobLocation'] = sparkJobLocation;
    return map;
  }

  factory SparkStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return SparkStatisticsResponse(
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
      loggingInfo: SparkLoggingInfoResponse.fromMap(
          (map['loggingInfo'] as Map).cast<String, dynamic>()),
      sparkJobId: map['sparkJobId'] as String,
      sparkJobLocation: map['sparkJobLocation'] as String,
    );
  }
}
