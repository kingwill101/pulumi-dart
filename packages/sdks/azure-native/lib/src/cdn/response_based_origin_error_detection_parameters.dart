// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_error_range_parameters.dart';
import 'response_based_detected_error_types.dart';

/// The JSON object that contains the properties to determine origin health using real requests/responses.
class ResponseBasedOriginErrorDetectionParameters {
  /// The list of Http status code ranges that are considered as server errors for origin and it is marked as unhealthy.
  final pulumi.Input<List<HttpErrorRangeParameters>>? httpErrorRanges;
  /// Type of response errors for real user requests for which origin will be deemed unhealthy
  final pulumi.Input<ResponseBasedDetectedErrorTypes>? responseBasedDetectedErrorTypes;
  /// The percentage of failed requests in the sample where failover should trigger.
  final pulumi.Input<int>? responseBasedFailoverThresholdPercentage;

  /// Creates a new [ResponseBasedOriginErrorDetectionParameters].
  /// [httpErrorRanges] The list of Http status code ranges that are considered as server errors for origin and it is marked as unhealthy.
  /// [responseBasedDetectedErrorTypes] Type of response errors for real user requests for which origin will be deemed unhealthy
  /// [responseBasedFailoverThresholdPercentage] The percentage of failed requests in the sample where failover should trigger.
  ResponseBasedOriginErrorDetectionParameters({
    this.httpErrorRanges,
    this.responseBasedDetectedErrorTypes,
    this.responseBasedFailoverThresholdPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorRanges': ?pulumi.Input.mapOptionalInputValue<List<HttpErrorRangeParameters>, List<Map<String, dynamic>>>(httpErrorRanges, (value) => pulumi.Input.encodeList<HttpErrorRangeParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseBasedDetectedErrorTypes': ?pulumi.Input.mapOptionalInputValue<ResponseBasedDetectedErrorTypes, String>(responseBasedDetectedErrorTypes, (value) => value.value),
      'responseBasedFailoverThresholdPercentage': ?responseBasedFailoverThresholdPercentage,
    };
  }

  factory ResponseBasedOriginErrorDetectionParameters.fromMap(Map<String, dynamic> map) {
    return ResponseBasedOriginErrorDetectionParameters(
      httpErrorRanges: map['httpErrorRanges'] == null ? null : (pulumi.Input.decodeList<HttpErrorRangeParameters>(map['httpErrorRanges'], (value) => HttpErrorRangeParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseBasedDetectedErrorTypes: map['responseBasedDetectedErrorTypes'] == null ? null : (ResponseBasedDetectedErrorTypes.fromValue(map['responseBasedDetectedErrorTypes'] as String)).input(),
      responseBasedFailoverThresholdPercentage: map['responseBasedFailoverThresholdPercentage'] == null ? null : (map['responseBasedFailoverThresholdPercentage'] as int).input(),
    );
  }
}

