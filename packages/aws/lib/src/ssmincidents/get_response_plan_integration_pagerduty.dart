// ignore_for_file: unused_element, unnecessary_cast

class GetResponsePlanIntegrationPagerduty {
  /// The name of the PagerDuty configuration.
  final String name;

  /// The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  final String secretId;

  /// The ID of the PagerDuty service that the response plan associates with an incident when it launches.
  final String serviceId;

  /// Creates a new [GetResponsePlanIntegrationPagerduty].
  /// [name] The name of the PagerDuty configuration.
  /// [secretId] The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  /// [serviceId] The ID of the PagerDuty service that the response plan associates with an incident when it launches.
  GetResponsePlanIntegrationPagerduty({
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

  factory GetResponsePlanIntegrationPagerduty.fromMap(
      Map<String, dynamic> map) {
    return GetResponsePlanIntegrationPagerduty(
      name: map['name'] as String,
      secretId: map['secretId'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
