// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_response_plan_integration_pagerduty/get_response_plan_integration_pagerduty.dart';

class GetResponsePlanIntegration {
  /// Details about the PagerDuty configuration for a response plan. The following values are supported:
  final List<GetResponsePlanIntegrationPagerduty> pagerduties;

  GetResponsePlanIntegration({
    required this.pagerduties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pagerduties'] = Input.encodeList<GetResponsePlanIntegrationPagerduty,
        Map<String, dynamic>>(pagerduties, (value) => value.toMap());
    return map;
  }

  factory GetResponsePlanIntegration.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIntegration(
      pagerduties: Input.decodeList<GetResponsePlanIntegrationPagerduty>(
          map['pagerduties'],
          (value) => GetResponsePlanIntegrationPagerduty.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
