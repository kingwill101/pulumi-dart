// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'diagnostic2.dart';

class PollingOptions2 {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final List<Diagnostic2>? diagnostics;

  /// JsonPath expression that determines if the request failed.
  final String? failCondition;

  /// JsonPath expression that determines if the request is completed.
  final String? finishCondition;

  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final String? pollingLink;

  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final String? targetLink;

  PollingOptions2({
    this.diagnostics,
    this.failCondition,
    this.finishCondition,
    this.pollingLink,
    this.targetLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diagnosticsValue = diagnostics;
    if (diagnosticsValue != null) {
      map['diagnostics'] = Input.encodeList<Diagnostic2, Map<String, dynamic>>(
          diagnosticsValue, (value) => value.toMap());
    }
    final failConditionValue = failCondition;
    if (failConditionValue != null) {
      map['failCondition'] = failConditionValue;
    }
    final finishConditionValue = finishCondition;
    if (finishConditionValue != null) {
      map['finishCondition'] = finishConditionValue;
    }
    final pollingLinkValue = pollingLink;
    if (pollingLinkValue != null) {
      map['pollingLink'] = pollingLinkValue;
    }
    final targetLinkValue = targetLink;
    if (targetLinkValue != null) {
      map['targetLink'] = targetLinkValue;
    }
    return map;
  }

  factory PollingOptions2.fromMap(Map<String, dynamic> map) {
    return PollingOptions2(
      diagnostics: map['diagnostics'] == null
          ? null
          : Input.decodeList<Diagnostic2>(
              map['diagnostics'],
              (value) =>
                  Diagnostic2.fromMap((value as Map).cast<String, dynamic>())),
      failCondition:
          map['failCondition'] == null ? null : map['failCondition'] as String,
      finishCondition: map['finishCondition'] == null
          ? null
          : map['finishCondition'] as String,
      pollingLink:
          map['pollingLink'] == null ? null : map['pollingLink'] as String,
      targetLink:
          map['targetLink'] == null ? null : map['targetLink'] as String,
    );
  }
}
