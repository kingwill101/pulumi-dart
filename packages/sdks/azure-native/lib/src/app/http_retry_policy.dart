// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_match.dart';

/// Policy that defines http request retry conditions
class HttpRetryPolicy {
  /// Errors that can trigger a retry
  final pulumi.Input<List<String>?>? errors;
  /// Headers that must be present for a request to be retried
  final pulumi.Input<List<HeaderMatch>?>? headers;
  /// Additional http status codes that can trigger a retry
  final pulumi.Input<List<int>?>? httpStatusCodes;
  /// Initial delay, in milliseconds, before retrying a request
  final pulumi.Input<double?>? initialDelayInMilliseconds;
  /// Maximum interval, in milliseconds, between retries
  final pulumi.Input<double?>? maxIntervalInMilliseconds;
  /// Maximum number of times a request will retry
  final pulumi.Input<int?>? maxRetries;

  /// Creates a new [HttpRetryPolicy].
  /// [errors] Errors that can trigger a retry
  /// [headers] Headers that must be present for a request to be retried
  /// [httpStatusCodes] Additional http status codes that can trigger a retry
  /// [initialDelayInMilliseconds] Initial delay, in milliseconds, before retrying a request
  /// [maxIntervalInMilliseconds] Maximum interval, in milliseconds, between retries
  /// [maxRetries] Maximum number of times a request will retry
  const HttpRetryPolicy({
    this.errors,
    this.headers,
    this.httpStatusCodes,
    this.initialDelayInMilliseconds,
    this.maxIntervalInMilliseconds,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HeaderMatch>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpStatusCodes': ?httpStatusCodes,
      'initialDelayInMilliseconds': ?initialDelayInMilliseconds,
      'maxIntervalInMilliseconds': ?maxIntervalInMilliseconds,
      'maxRetries': ?maxRetries,
    };
  }

  factory HttpRetryPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRetryPolicy(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderMatch>(guardedValue, (value) => HeaderMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpStatusCodes: (() { final guardedValue = map['httpStatusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      initialDelayInMilliseconds: (() { final guardedValue = map['initialDelayInMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxIntervalInMilliseconds: (() { final guardedValue = map['maxIntervalInMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
