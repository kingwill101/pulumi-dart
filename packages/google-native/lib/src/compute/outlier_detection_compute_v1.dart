// ignore_for_file: unused_element, unnecessary_cast

import 'duration_compute_v1.dart';

/// Settings controlling the eviction of unhealthy hosts from the load balancing pool for the backend service.
class OutlierDetectionComputeV1 {
  /// The base time that a backend endpoint is ejected for. Defaults to 30000ms or 30s. After a backend endpoint is returned back to the load balancing pool, it can be ejected again in another ejection analysis. Thus, the total ejection time is equal to the base ejection time multiplied by the number of times the backend endpoint has been ejected. Defaults to 30000ms or 30s.
  final DurationComputeV1? baseEjectionTime;

  /// Number of consecutive errors before a backend endpoint is ejected from the load balancing pool. When the backend endpoint is accessed over HTTP, a 5xx return code qualifies as an error. Defaults to 5.
  final int? consecutiveErrors;

  /// The number of consecutive gateway failures (502, 503, 504 status or connection errors that are mapped to one of those status codes) before a consecutive gateway failure ejection occurs. Defaults to 3.
  final int? consecutiveGatewayFailure;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive 5xx. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 0.
  final int? enforcingConsecutiveErrors;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive gateway failures. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  final int? enforcingConsecutiveGatewayFailure;

  /// The percentage chance that a backend endpoint will be ejected when an outlier status is detected through success rate statistics. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  final int? enforcingSuccessRate;

  /// Time interval between ejection analysis sweeps. This can result in both new ejections and backend endpoints being returned to service. The interval is equal to the number of seconds as defined in outlierDetection.interval.seconds plus the number of nanoseconds as defined in outlierDetection.interval.nanos. Defaults to 1 second.
  final DurationComputeV1? interval;

  /// Maximum percentage of backend endpoints in the load balancing pool for the backend service that can be ejected if the ejection conditions are met. Defaults to 50%.
  final int? maxEjectionPercent;

  /// The number of backend endpoints in the load balancing pool that must have enough request volume to detect success rate outliers. If the number of backend endpoints is fewer than this setting, outlier detection via success rate statistics is not performed for any backend endpoint in the load balancing pool. Defaults to 5. Not supported when the backend service uses Serverless NEG.
  final int? successRateMinimumHosts;

  /// The minimum number of total requests that must be collected in one interval (as defined by the interval duration above) to include this backend endpoint in success rate based outlier detection. If the volume is lower than this setting, outlier detection via success rate statistics is not performed for that backend endpoint. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  final int? successRateRequestVolume;

  /// This factor is used to determine the ejection threshold for success rate outlier ejection. The ejection threshold is the difference between the mean success rate, and the product of this factor and the standard deviation of the mean success rate: mean - (stdev * successRateStdevFactor). This factor is divided by a thousand to get a double. That is, if the desired factor is 1.9, the runtime value should be 1900. Defaults to 1900. Not supported when the backend service uses Serverless NEG.
  final int? successRateStdevFactor;

  /// Creates a new [OutlierDetectionComputeV1].
  /// [baseEjectionTime] The base time that a backend endpoint is ejected for. Defaults to 30000ms or 30s. After a backend endpoint is returned back to the load balancing pool, it can be ejected again in another ejection analysis. Thus, the total ejection time is equal to the base ejection time multiplied by the number of times the backend endpoint has been ejected. Defaults to 30000ms or 30s.
  /// [consecutiveErrors] Number of consecutive errors before a backend endpoint is ejected from the load balancing pool. When the backend endpoint is accessed over HTTP, a 5xx return code qualifies as an error. Defaults to 5.
  /// [consecutiveGatewayFailure] The number of consecutive gateway failures (502, 503, 504 status or connection errors that are mapped to one of those status codes) before a consecutive gateway failure ejection occurs. Defaults to 3.
  /// [enforcingConsecutiveErrors] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive 5xx. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 0.
  /// [enforcingConsecutiveGatewayFailure] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through consecutive gateway failures. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  /// [enforcingSuccessRate] The percentage chance that a backend endpoint will be ejected when an outlier status is detected through success rate statistics. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  /// [interval] Time interval between ejection analysis sweeps. This can result in both new ejections and backend endpoints being returned to service. The interval is equal to the number of seconds as defined in outlierDetection.interval.seconds plus the number of nanoseconds as defined in outlierDetection.interval.nanos. Defaults to 1 second.
  /// [maxEjectionPercent] Maximum percentage of backend endpoints in the load balancing pool for the backend service that can be ejected if the ejection conditions are met. Defaults to 50%.
  /// [successRateMinimumHosts] The number of backend endpoints in the load balancing pool that must have enough request volume to detect success rate outliers. If the number of backend endpoints is fewer than this setting, outlier detection via success rate statistics is not performed for any backend endpoint in the load balancing pool. Defaults to 5. Not supported when the backend service uses Serverless NEG.
  /// [successRateRequestVolume] The minimum number of total requests that must be collected in one interval (as defined by the interval duration above) to include this backend endpoint in success rate based outlier detection. If the volume is lower than this setting, outlier detection via success rate statistics is not performed for that backend endpoint. Defaults to 100. Not supported when the backend service uses Serverless NEG.
  /// [successRateStdevFactor] This factor is used to determine the ejection threshold for success rate outlier ejection. The ejection threshold is the difference between the mean success rate, and the product of this factor and the standard deviation of the mean success rate: mean - (stdev * successRateStdevFactor). This factor is divided by a thousand to get a double. That is, if the desired factor is 1.9, the runtime value should be 1900. Defaults to 1900. Not supported when the backend service uses Serverless NEG.
  OutlierDetectionComputeV1({
    this.baseEjectionTime,
    this.consecutiveErrors,
    this.consecutiveGatewayFailure,
    this.enforcingConsecutiveErrors,
    this.enforcingConsecutiveGatewayFailure,
    this.enforcingSuccessRate,
    this.interval,
    this.maxEjectionPercent,
    this.successRateMinimumHosts,
    this.successRateRequestVolume,
    this.successRateStdevFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEjectionTime': ?baseEjectionTime == null
          ? null
          : baseEjectionTime!.toMap(),
      'consecutiveErrors': ?consecutiveErrors,
      'consecutiveGatewayFailure': ?consecutiveGatewayFailure,
      'enforcingConsecutiveErrors': ?enforcingConsecutiveErrors,
      'enforcingConsecutiveGatewayFailure': ?enforcingConsecutiveGatewayFailure,
      'enforcingSuccessRate': ?enforcingSuccessRate,
      'interval': ?interval == null ? null : interval!.toMap(),
      'maxEjectionPercent': ?maxEjectionPercent,
      'successRateMinimumHosts': ?successRateMinimumHosts,
      'successRateRequestVolume': ?successRateRequestVolume,
      'successRateStdevFactor': ?successRateStdevFactor,
    };
  }

  factory OutlierDetectionComputeV1.fromMap(Map<String, dynamic> map) {
    return OutlierDetectionComputeV1(
      baseEjectionTime: map['baseEjectionTime'] == null
          ? null
          : DurationComputeV1.fromMap(
              (map['baseEjectionTime'] as Map).cast<String, dynamic>(),
            ),
      consecutiveErrors: map['consecutiveErrors'] == null
          ? null
          : map['consecutiveErrors'] as int,
      consecutiveGatewayFailure: map['consecutiveGatewayFailure'] == null
          ? null
          : map['consecutiveGatewayFailure'] as int,
      enforcingConsecutiveErrors: map['enforcingConsecutiveErrors'] == null
          ? null
          : map['enforcingConsecutiveErrors'] as int,
      enforcingConsecutiveGatewayFailure:
          map['enforcingConsecutiveGatewayFailure'] == null
          ? null
          : map['enforcingConsecutiveGatewayFailure'] as int,
      enforcingSuccessRate: map['enforcingSuccessRate'] == null
          ? null
          : map['enforcingSuccessRate'] as int,
      interval: map['interval'] == null
          ? null
          : DurationComputeV1.fromMap(
              (map['interval'] as Map).cast<String, dynamic>(),
            ),
      maxEjectionPercent: map['maxEjectionPercent'] == null
          ? null
          : map['maxEjectionPercent'] as int,
      successRateMinimumHosts: map['successRateMinimumHosts'] == null
          ? null
          : map['successRateMinimumHosts'] as int,
      successRateRequestVolume: map['successRateRequestVolume'] == null
          ? null
          : map['successRateRequestVolume'] as int,
      successRateStdevFactor: map['successRateStdevFactor'] == null
          ? null
          : map['successRateStdevFactor'] as int,
    );
  }
}
