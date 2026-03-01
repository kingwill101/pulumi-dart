// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_plan_integration_pagerduty.dart';

class GetResponsePlanIntegration {
  /// Details about the PagerDuty configuration for a response plan. The following values are supported:
  final List<GetResponsePlanIntegrationPagerduty> pagerduties;

  /// Creates a new [GetResponsePlanIntegration].
  /// [pagerduties] Details about the PagerDuty configuration for a response plan. The following values are supported:
  GetResponsePlanIntegration({required this.pagerduties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagerduties':
          pulumi.Input.encodeList<
            GetResponsePlanIntegrationPagerduty,
            Map<String, dynamic>
          >(pagerduties, (value) => value.toMap()),
    };
  }

  factory GetResponsePlanIntegration.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIntegration(
      pagerduties: pulumi.Input.decodeList<GetResponsePlanIntegrationPagerduty>(
        map['pagerduties'],
        (value) => GetResponsePlanIntegrationPagerduty.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
