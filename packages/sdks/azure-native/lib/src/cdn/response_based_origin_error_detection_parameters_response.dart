// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_error_range_parameters_response.dart';

/// The JSON object that contains the properties to determine origin health using real requests/responses.
class ResponseBasedOriginErrorDetectionParametersResponse {
  /// The list of Http status code ranges that are considered as server errors for origin and it is marked as unhealthy.
  final pulumi.Input<List<HttpErrorRangeParametersResponse>?>? httpErrorRanges;
  /// Type of response errors for real user requests for which origin will be deemed unhealthy
  final pulumi.Input<String?>? responseBasedDetectedErrorTypes;
  /// The percentage of failed requests in the sample where failover should trigger.
  final pulumi.Input<int?>? responseBasedFailoverThresholdPercentage;

  /// Creates a new [ResponseBasedOriginErrorDetectionParametersResponse].
  /// [httpErrorRanges] The list of Http status code ranges that are considered as server errors for origin and it is marked as unhealthy.
  /// [responseBasedDetectedErrorTypes] Type of response errors for real user requests for which origin will be deemed unhealthy
  /// [responseBasedFailoverThresholdPercentage] The percentage of failed requests in the sample where failover should trigger.
  const ResponseBasedOriginErrorDetectionParametersResponse({
    this.httpErrorRanges,
    this.responseBasedDetectedErrorTypes,
    this.responseBasedFailoverThresholdPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorRanges': ?pulumi.Input.mapOptionalInputValue<List<HttpErrorRangeParametersResponse>, List<Map<String, dynamic>>>(httpErrorRanges, (value) => pulumi.Input.encodeList<HttpErrorRangeParametersResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseBasedDetectedErrorTypes': ?responseBasedDetectedErrorTypes,
      'responseBasedFailoverThresholdPercentage': ?responseBasedFailoverThresholdPercentage,
    };
  }

  factory ResponseBasedOriginErrorDetectionParametersResponse.fromMap(Map<String, dynamic> map) {
    return ResponseBasedOriginErrorDetectionParametersResponse(
      httpErrorRanges: (() { final guardedValue = map['httpErrorRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpErrorRangeParametersResponse>(guardedValue, (value) => HttpErrorRangeParametersResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseBasedDetectedErrorTypes: (() { final guardedValue = map['responseBasedDetectedErrorTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseBasedFailoverThresholdPercentage: (() { final guardedValue = map['responseBasedFailoverThresholdPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
