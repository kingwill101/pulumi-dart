// ignore_for_file: unused_element, unnecessary_cast

class ResponsePlanIntegrationPagerduty {
  /// The name of the PagerDuty configuration.
  final String name;

  /// The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  ///
  /// For more information about the constraints for each field, see [CreateResponsePlan](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_CreateResponsePlan.html) in the *AWS Systems Manager Incident Manager API Reference*.
  final String secretId;

  /// The ID of the PagerDuty service that the response plan associated with the incident at launch.
  final String serviceId;

  ResponsePlanIntegrationPagerduty({
    required this.name,
    required this.secretId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['secretId'] = secretId;
    map['serviceId'] = serviceId;
    return map;
  }

  factory ResponsePlanIntegrationPagerduty.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIntegrationPagerduty(
      name: map['name'] as String,
      secretId: map['secretId'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
