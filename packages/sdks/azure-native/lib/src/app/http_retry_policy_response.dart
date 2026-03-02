// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_match_response.dart';

/// Policy that defines http request retry conditions
class HttpRetryPolicyResponse {
  /// Errors that can trigger a retry
  final pulumi.Input<List<String>>? errors;
  /// Headers that must be present for a request to be retried
  final pulumi.Input<List<HeaderMatchResponse>>? headers;
  /// Additional http status codes that can trigger a retry
  final pulumi.Input<List<int>>? httpStatusCodes;
  /// Initial delay, in milliseconds, before retrying a request
  final pulumi.Input<double>? initialDelayInMilliseconds;
  /// Maximum interval, in milliseconds, between retries
  final pulumi.Input<double>? maxIntervalInMilliseconds;
  /// Maximum number of times a request will retry
  final pulumi.Input<int>? maxRetries;

  /// Creates a new [HttpRetryPolicyResponse].
  /// [errors] Errors that can trigger a retry
  /// [headers] Headers that must be present for a request to be retried
  /// [httpStatusCodes] Additional http status codes that can trigger a retry
  /// [initialDelayInMilliseconds] Initial delay, in milliseconds, before retrying a request
  /// [maxIntervalInMilliseconds] Maximum interval, in milliseconds, between retries
  /// [maxRetries] Maximum number of times a request will retry
  HttpRetryPolicyResponse({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HeaderMatchResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpStatusCodes': ?httpStatusCodes,
      'initialDelayInMilliseconds': ?initialDelayInMilliseconds,
      'maxIntervalInMilliseconds': ?maxIntervalInMilliseconds,
      'maxRetries': ?maxRetries,
    };
  }

  factory HttpRetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return HttpRetryPolicyResponse(
      errors: map['errors'] == null ? null : ((map['errors'] as List).cast<String>()).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<HeaderMatchResponse>(map['headers'], (value) => HeaderMatchResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpStatusCodes: map['httpStatusCodes'] == null ? null : ((map['httpStatusCodes'] as List).cast<int>()).input(),
      initialDelayInMilliseconds: map['initialDelayInMilliseconds'] == null ? null : (map['initialDelayInMilliseconds'] as double).input(),
      maxIntervalInMilliseconds: map['maxIntervalInMilliseconds'] == null ? null : (map['maxIntervalInMilliseconds'] as double).input(),
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries'] as int).input(),
    );
  }
}

