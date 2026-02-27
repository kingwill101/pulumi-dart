// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_response_deploymentmanager_v2beta.dart';

class PollingOptionsResponseDeploymentmanagerV2beta {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final List<DiagnosticResponseDeploymentmanagerV2beta> diagnostics;

  /// JsonPath expression that determines if the request failed.
  final String failCondition;

  /// JsonPath expression that determines if the request is completed.
  final String finishCondition;

  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final String pollingLink;

  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final String targetLink;

  PollingOptionsResponseDeploymentmanagerV2beta({
    required this.diagnostics,
    required this.failCondition,
    required this.finishCondition,
    required this.pollingLink,
    required this.targetLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diagnostics'] = pulumi.Input.encodeList<
        DiagnosticResponseDeploymentmanagerV2beta,
        Map<String, dynamic>>(diagnostics, (value) => value.toMap());
    map['failCondition'] = failCondition;
    map['finishCondition'] = finishCondition;
    map['pollingLink'] = pollingLink;
    map['targetLink'] = targetLink;
    return map;
  }

  factory PollingOptionsResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return PollingOptionsResponseDeploymentmanagerV2beta(
      diagnostics:
          pulumi.Input.decodeList<DiagnosticResponseDeploymentmanagerV2beta>(
              map['diagnostics'],
              (value) => DiagnosticResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      failCondition: map['failCondition'] as String,
      finishCondition: map['finishCondition'] as String,
      pollingLink: map['pollingLink'] as String,
      targetLink: map['targetLink'] as String,
    );
  }
}
