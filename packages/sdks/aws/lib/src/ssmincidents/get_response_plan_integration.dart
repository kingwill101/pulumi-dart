// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_integration_pagerduty.dart';

class GetResponsePlanIntegration {
  /// Details about the PagerDuty configuration for a response plan. The following values are supported:
  final pulumi.Input<List<GetResponsePlanIntegrationPagerduty>> pagerduties;

  /// Creates a new [GetResponsePlanIntegration].
  /// [pagerduties] Details about the PagerDuty configuration for a response plan. The following values are supported:
  const GetResponsePlanIntegration({
    required this.pagerduties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagerduties': pulumi.Input.mapInputValue<List<GetResponsePlanIntegrationPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<GetResponsePlanIntegrationPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResponsePlanIntegration.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIntegration(
      pagerduties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResponsePlanIntegrationPagerduty>(map['pagerduties']!, (value) => GetResponsePlanIntegrationPagerduty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
