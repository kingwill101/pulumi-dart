// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_custom_headers_item_response.dart';
import 'monitor_config_expected_status_code_ranges_item_response.dart';

/// Class containing endpoint monitoring settings in a Traffic Manager profile.
class MonitorConfigResponse {
  /// List of custom headers.
  final List<MonitorConfigCustomHeadersItemResponse>? customHeaders;
  /// List of expected status code ranges.
  final List<MonitorConfigExpectedStatusCodeRangesItemResponse>? expectedStatusCodeRanges;
  /// The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile.
  final double? intervalInSeconds;
  /// The path relative to the endpoint domain name used to probe for endpoint health.
  final String? path;
  /// The TCP port used to probe for endpoint health.
  final double? port;
  /// The profile-level monitoring status of the Traffic Manager profile.
  final String? profileMonitorStatus;
  /// The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
  final String? protocol;
  /// The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check.
  final double? timeoutInSeconds;
  /// The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check.
  final double? toleratedNumberOfFailures;

  /// Creates a new [MonitorConfigResponse].
  /// [customHeaders] List of custom headers.
  /// [expectedStatusCodeRanges] List of expected status code ranges.
  /// [intervalInSeconds] The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile.
  /// [path] The path relative to the endpoint domain name used to probe for endpoint health.
  /// [port] The TCP port used to probe for endpoint health.
  /// [profileMonitorStatus] The profile-level monitoring status of the Traffic Manager profile.
  /// [protocol] The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
  /// [timeoutInSeconds] The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check.
  /// [toleratedNumberOfFailures] The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check.
  MonitorConfigResponse({
    this.customHeaders,
    this.expectedStatusCodeRanges,
    this.intervalInSeconds,
    this.path,
    this.port,
    this.profileMonitorStatus,
    this.protocol,
    this.timeoutInSeconds,
    this.toleratedNumberOfFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders': ?customHeaders == null ? null : pulumi.Input.encodeList<MonitorConfigCustomHeadersItemResponse, Map<String, dynamic>>(customHeaders!, (value) => value.toMap()),
      'expectedStatusCodeRanges': ?expectedStatusCodeRanges == null ? null : pulumi.Input.encodeList<MonitorConfigExpectedStatusCodeRangesItemResponse, Map<String, dynamic>>(expectedStatusCodeRanges!, (value) => value.toMap()),
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'port': ?port,
      'profileMonitorStatus': ?profileMonitorStatus,
      'protocol': ?protocol,
      'timeoutInSeconds': ?timeoutInSeconds,
      'toleratedNumberOfFailures': ?toleratedNumberOfFailures,
    };
  }

  factory MonitorConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitorConfigResponse(
      customHeaders: map['customHeaders'] == null ? null : pulumi.Input.decodeList<MonitorConfigCustomHeadersItemResponse>(map['customHeaders'], (value) => MonitorConfigCustomHeadersItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      expectedStatusCodeRanges: map['expectedStatusCodeRanges'] == null ? null : pulumi.Input.decodeList<MonitorConfigExpectedStatusCodeRangesItemResponse>(map['expectedStatusCodeRanges'], (value) => MonitorConfigExpectedStatusCodeRangesItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as double,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as double,
      profileMonitorStatus: map['profileMonitorStatus'] == null ? null : map['profileMonitorStatus'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as double,
      toleratedNumberOfFailures: map['toleratedNumberOfFailures'] == null ? null : map['toleratedNumberOfFailures'] as double,
    );
  }
}

