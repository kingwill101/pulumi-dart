// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_outlier_detection_base_ejection_time.dart';
import 'get_backend_service_outlier_detection_interval.dart';

class GetBackendServiceOutlierDetection {
  /// The base time that a host is ejected for. The real time is equal to the base
  /// time multiplied by the number of times the host has been ejected. Defaults to
  /// 30000ms or 30s.
  final List<GetBackendServiceOutlierDetectionBaseEjectionTime> baseEjectionTimes;
  /// Number of errors before a host is ejected from the connection pool. When the
  /// backend host is accessed over HTTP, a 5xx return code qualifies as an error.
  /// Defaults to 5.
  final int consecutiveErrors;
  /// The number of consecutive gateway failures (502, 503, 504 status or connection
  /// errors that are mapped to one of those status codes) before a consecutive
  /// gateway failure ejection occurs. Defaults to 5.
  final int consecutiveGatewayFailure;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through consecutive 5xx. This setting can be used to disable
  /// ejection or to ramp it up slowly. Defaults to 100.
  final int enforcingConsecutiveErrors;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through consecutive gateway failures. This setting can be
  /// used to disable ejection or to ramp it up slowly. Defaults to 0.
  final int enforcingConsecutiveGatewayFailure;
  /// The percentage chance that a host will be actually ejected when an outlier
  /// status is detected through success rate statistics. This setting can be used to
  /// disable ejection or to ramp it up slowly. Defaults to 100.
  final int enforcingSuccessRate;
  /// Time interval between ejection sweep analysis. This can result in both new
  /// ejections as well as hosts being returned to service. Defaults to 10 seconds.
  final List<GetBackendServiceOutlierDetectionInterval> intervals;
  /// Maximum percentage of hosts in the load balancing pool for the backend service
  /// that can be ejected. Defaults to 10%.
  final int maxEjectionPercent;
  /// The number of hosts in a cluster that must have enough request volume to detect
  /// success rate outliers. If the number of hosts is less than this setting, outlier
  /// detection via success rate statistics is not performed for any host in the
  /// cluster. Defaults to 5.
  final int successRateMinimumHosts;
  /// The minimum number of total requests that must be collected in one interval (as
  /// defined by the interval duration above) to include this host in success rate
  /// based outlier detection. If the volume is lower than this setting, outlier
  /// detection via success rate statistics is not performed for that host. Defaults
  /// to 100.
  final int successRateRequestVolume;
  /// This factor is used to determine the ejection threshold for success rate outlier
  /// ejection. The ejection threshold is the difference between the mean success
  /// rate, and the product of this factor and the standard deviation of the mean
  /// success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided
  /// by a thousand to get a double. That is, if the desired factor is 1.9, the
  /// runtime value should be 1900. Defaults to 1900.
  final int successRateStdevFactor;

  /// Creates a new [GetBackendServiceOutlierDetection].
  /// [baseEjectionTimes] The base time that a host is ejected for. The real time is equal to the base
  /// [consecutiveErrors] Number of errors before a host is ejected from the connection pool. When the
  /// [consecutiveGatewayFailure] The number of consecutive gateway failures (502, 503, 504 status or connection
  /// [enforcingConsecutiveErrors] The percentage chance that a host will be actually ejected when an outlier
  /// [enforcingConsecutiveGatewayFailure] The percentage chance that a host will be actually ejected when an outlier
  /// [enforcingSuccessRate] The percentage chance that a host will be actually ejected when an outlier
  /// [intervals] Time interval between ejection sweep analysis. This can result in both new
  /// [maxEjectionPercent] Maximum percentage of hosts in the load balancing pool for the backend service
  /// [successRateMinimumHosts] The number of hosts in a cluster that must have enough request volume to detect
  /// [successRateRequestVolume] The minimum number of total requests that must be collected in one interval (as
  /// [successRateStdevFactor] This factor is used to determine the ejection threshold for success rate outlier
  GetBackendServiceOutlierDetection({
    required this.baseEjectionTimes,
    required this.consecutiveErrors,
    required this.consecutiveGatewayFailure,
    required this.enforcingConsecutiveErrors,
    required this.enforcingConsecutiveGatewayFailure,
    required this.enforcingSuccessRate,
    required this.intervals,
    required this.maxEjectionPercent,
    required this.successRateMinimumHosts,
    required this.successRateRequestVolume,
    required this.successRateStdevFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEjectionTimes': pulumi.Input.encodeList<GetBackendServiceOutlierDetectionBaseEjectionTime, Map<String, dynamic>>(baseEjectionTimes, (value) => value.toMap()),
      'consecutiveErrors': consecutiveErrors,
      'consecutiveGatewayFailure': consecutiveGatewayFailure,
      'enforcingConsecutiveErrors': enforcingConsecutiveErrors,
      'enforcingConsecutiveGatewayFailure': enforcingConsecutiveGatewayFailure,
      'enforcingSuccessRate': enforcingSuccessRate,
      'intervals': pulumi.Input.encodeList<GetBackendServiceOutlierDetectionInterval, Map<String, dynamic>>(intervals, (value) => value.toMap()),
      'maxEjectionPercent': maxEjectionPercent,
      'successRateMinimumHosts': successRateMinimumHosts,
      'successRateRequestVolume': successRateRequestVolume,
      'successRateStdevFactor': successRateStdevFactor,
    };
  }

  factory GetBackendServiceOutlierDetection.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceOutlierDetection(
      baseEjectionTimes: pulumi.Input.decodeList<GetBackendServiceOutlierDetectionBaseEjectionTime>(map['baseEjectionTimes'], (value) => GetBackendServiceOutlierDetectionBaseEjectionTime.fromMap((value as Map).cast<String, dynamic>())),
      consecutiveErrors: map['consecutiveErrors'] as int,
      consecutiveGatewayFailure: map['consecutiveGatewayFailure'] as int,
      enforcingConsecutiveErrors: map['enforcingConsecutiveErrors'] as int,
      enforcingConsecutiveGatewayFailure: map['enforcingConsecutiveGatewayFailure'] as int,
      enforcingSuccessRate: map['enforcingSuccessRate'] as int,
      intervals: pulumi.Input.decodeList<GetBackendServiceOutlierDetectionInterval>(map['intervals'], (value) => GetBackendServiceOutlierDetectionInterval.fromMap((value as Map).cast<String, dynamic>())),
      maxEjectionPercent: map['maxEjectionPercent'] as int,
      successRateMinimumHosts: map['successRateMinimumHosts'] as int,
      successRateRequestVolume: map['successRateRequestVolume'] as int,
      successRateStdevFactor: map['successRateStdevFactor'] as int,
    );
  }
}

