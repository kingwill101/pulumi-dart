// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_plan_integration_pagerduty/response_plan_integration_pagerduty.dart';

class ResponsePlanIntegration {
  /// Details about the PagerDuty configuration for a response plan. The following values are supported:
  final List<ResponsePlanIntegrationPagerduty>? pagerduties;

  ResponsePlanIntegration({
    this.pagerduties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pagerdutiesValue = pagerduties;
    if (pagerdutiesValue != null) {
      map['pagerduties'] = Input.encodeList<ResponsePlanIntegrationPagerduty,
          Map<String, dynamic>>(pagerdutiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponsePlanIntegration.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIntegration(
      pagerduties: map['pagerduties'] == null
          ? null
          : Input.decodeList<ResponsePlanIntegrationPagerduty>(
              map['pagerduties'],
              (value) => ResponsePlanIntegrationPagerduty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
