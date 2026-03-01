// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_match.dart';

/// Policy that defines http request retry conditions
class HttpRetryPolicy {
  /// Errors that can trigger a retry
  final List<String>? errors;
  /// Headers that must be present for a request to be retried
  final List<HeaderMatch>? headers;
  /// Additional http status codes that can trigger a retry
  final List<int>? httpStatusCodes;
  /// Initial delay, in milliseconds, before retrying a request
  final double? initialDelayInMilliseconds;
  /// Maximum interval, in milliseconds, between retries
  final double? maxIntervalInMilliseconds;
  /// Maximum number of times a request will retry
  final int? maxRetries;

  /// Creates a new [HttpRetryPolicy].
  /// [errors] Errors that can trigger a retry
  /// [headers] Headers that must be present for a request to be retried
  /// [httpStatusCodes] Additional http status codes that can trigger a retry
  /// [initialDelayInMilliseconds] Initial delay, in milliseconds, before retrying a request
  /// [maxIntervalInMilliseconds] Maximum interval, in milliseconds, between retries
  /// [maxRetries] Maximum number of times a request will retry
  HttpRetryPolicy({
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
      'headers': ?headers == null ? null : pulumi.Input.encodeList<HeaderMatch, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'httpStatusCodes': ?httpStatusCodes,
      'initialDelayInMilliseconds': ?initialDelayInMilliseconds,
      'maxIntervalInMilliseconds': ?maxIntervalInMilliseconds,
      'maxRetries': ?maxRetries,
    };
  }

  factory HttpRetryPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRetryPolicy(
      errors: map['errors'] == null ? null : (map['errors'] as List).cast<String>(),
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<HeaderMatch>(map['headers'], (value) => HeaderMatch.fromMap((value as Map).cast<String, dynamic>())),
      httpStatusCodes: map['httpStatusCodes'] == null ? null : (map['httpStatusCodes'] as List).cast<int>(),
      initialDelayInMilliseconds: map['initialDelayInMilliseconds'] == null ? null : map['initialDelayInMilliseconds'] as double,
      maxIntervalInMilliseconds: map['maxIntervalInMilliseconds'] == null ? null : map['maxIntervalInMilliseconds'] as double,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
    );
  }
}

