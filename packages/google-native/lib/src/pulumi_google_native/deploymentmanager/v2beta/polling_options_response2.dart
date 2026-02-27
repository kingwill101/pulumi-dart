// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'diagnostic_response2.dart';

class PollingOptionsResponse2 {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final List<DiagnosticResponse2> diagnostics;

  /// JsonPath expression that determines if the request failed.
  final String failCondition;

  /// JsonPath expression that determines if the request is completed.
  final String finishCondition;

  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final String pollingLink;

  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final String targetLink;

  PollingOptionsResponse2({
    required this.diagnostics,
    required this.failCondition,
    required this.finishCondition,
    required this.pollingLink,
    required this.targetLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diagnostics'] =
        Input.encodeList<DiagnosticResponse2, Map<String, dynamic>>(
            diagnostics, (value) => value.toMap());
    map['failCondition'] = failCondition;
    map['finishCondition'] = finishCondition;
    map['pollingLink'] = pollingLink;
    map['targetLink'] = targetLink;
    return map;
  }

  factory PollingOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return PollingOptionsResponse2(
      diagnostics: Input.decodeList<DiagnosticResponse2>(
          map['diagnostics'],
          (value) => DiagnosticResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      failCondition: map['failCondition'] as String,
      finishCondition: map['finishCondition'] as String,
      pollingLink: map['pollingLink'] as String,
      targetLink: map['targetLink'] as String,
    );
  }
}
