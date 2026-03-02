// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_integration_pagerduty.dart';

class ResponsePlanIntegration {
  /// Details about the PagerDuty configuration for a response plan. The following values are supported:
  final pulumi.Input<List<ResponsePlanIntegrationPagerduty>>? pagerduties;

  /// Creates a new [ResponsePlanIntegration].
  /// [pagerduties] Details about the PagerDuty configuration for a response plan. The following values are supported:
  ResponsePlanIntegration({
    this.pagerduties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagerduties': ?pulumi.Input.mapOptionalInputValue<List<ResponsePlanIntegrationPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<ResponsePlanIntegrationPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponsePlanIntegration.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIntegration(
      pagerduties: map['pagerduties'] == null ? null : ((pulumi.Input.decodeList<ResponsePlanIntegrationPagerduty>(map['pagerduties']!, (value) => ResponsePlanIntegrationPagerduty.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

