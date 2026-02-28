// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Represents a gRPC setting that describes one gRPC notification endpoint and the retry duration attempting to send notification to this endpoint.
class NotificationEndpointGrpcSettings {
  /// Optional. If specified, this field is used to set the authority header by the sender of notifications. See https://tools.ietf.org/html/rfc7540#section-8.1.2.3
  final String? authority;

  /// Endpoint to which gRPC notifications are sent. This must be a valid gRPCLB DNS name.
  final String? endpoint;

  /// Optional. If specified, this field is used to populate the "name" field in gRPC requests.
  final String? payloadName;

  /// Optional. This field is used to configure how often to send a full update of all non-healthy backends. If unspecified, full updates are not sent. If specified, must be in the range between 600 seconds to 3600 seconds. Nanos are disallowed. Can only be set for regional notification endpoints.
  final Duration? resendInterval;

  /// How much time (in seconds) is spent attempting notification retries until a successful response is received. Default is 30s. Limit is 20m (1200s). Must be a positive number.
  final int? retryDurationSec;

  /// Creates a new [NotificationEndpointGrpcSettings].
  /// [authority] Optional. If specified, this field is used to set the authority header by the sender of notifications. See https://tools.ietf.org/html/rfc7540#section-8.1.2.3
  /// [endpoint] Endpoint to which gRPC notifications are sent. This must be a valid gRPCLB DNS name.
  /// [payloadName] Optional. If specified, this field is used to populate the "name" field in gRPC requests.
  /// [resendInterval] Optional. This field is used to configure how often to send a full update of all non-healthy backends. If unspecified, full updates are not sent. If specified, must be in the range between 600 seconds to 3600 seconds. Nanos are disallowed. Can only be set for regional notification endpoints.
  /// [retryDurationSec] How much time (in seconds) is spent attempting notification retries until a successful response is received. Default is 30s. Limit is 20m (1200s). Must be a positive number.
  NotificationEndpointGrpcSettings({
    this.authority,
    this.endpoint,
    this.payloadName,
    this.resendInterval,
    this.retryDurationSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = authorityValue;
    }
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    final payloadNameValue = payloadName;
    if (payloadNameValue != null) {
      map['payloadName'] = payloadNameValue;
    }
    final resendIntervalValue = resendInterval;
    if (resendIntervalValue != null) {
      map['resendInterval'] = resendIntervalValue.toMap();
    }
    final retryDurationSecValue = retryDurationSec;
    if (retryDurationSecValue != null) {
      map['retryDurationSec'] = retryDurationSecValue;
    }
    return map;
  }

  factory NotificationEndpointGrpcSettings.fromMap(Map<String, dynamic> map) {
    return NotificationEndpointGrpcSettings(
      authority: map['authority'] == null ? null : map['authority'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      payloadName:
          map['payloadName'] == null ? null : map['payloadName'] as String,
      resendInterval: map['resendInterval'] == null
          ? null
          : Duration.fromMap(
              (map['resendInterval'] as Map).cast<String, dynamic>()),
      retryDurationSec: map['retryDurationSec'] == null
          ? null
          : map['retryDurationSec'] as int,
    );
  }
}
