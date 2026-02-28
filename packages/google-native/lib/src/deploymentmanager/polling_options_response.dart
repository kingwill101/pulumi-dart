// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_response.dart';

class PollingOptionsResponse {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final List<DiagnosticResponse> diagnostics;

  /// JsonPath expression that determines if the request failed.
  final String failCondition;

  /// JsonPath expression that determines if the request is completed.
  final String finishCondition;

  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final String pollingLink;

  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final String targetLink;

  /// Creates a new [PollingOptionsResponse].
  /// [diagnostics] An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  /// [failCondition] JsonPath expression that determines if the request failed.
  /// [finishCondition] JsonPath expression that determines if the request is completed.
  /// [pollingLink] JsonPath expression that evaluates to string, it indicates where to poll.
  /// [targetLink] JsonPath expression, after polling is completed, indicates where to fetch the resource.
  PollingOptionsResponse({
    required this.diagnostics,
    required this.failCondition,
    required this.finishCondition,
    required this.pollingLink,
    required this.targetLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diagnostics'] =
        pulumi.Input.encodeList<DiagnosticResponse, Map<String, dynamic>>(
            diagnostics, (value) => value.toMap());
    map['failCondition'] = failCondition;
    map['finishCondition'] = finishCondition;
    map['pollingLink'] = pollingLink;
    map['targetLink'] = targetLink;
    return map;
  }

  factory PollingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return PollingOptionsResponse(
      diagnostics: pulumi.Input.decodeList<DiagnosticResponse>(
          map['diagnostics'],
          (value) => DiagnosticResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      failCondition: map['failCondition'] as String,
      finishCondition: map['finishCondition'] as String,
      pollingLink: map['pollingLink'] as String,
      targetLink: map['targetLink'] as String,
    );
  }
}
