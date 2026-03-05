// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponsePlanIntegrationPagerduty {
  /// The name of the PagerDuty configuration.
  final pulumi.Input<String> name;
  /// The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  final pulumi.Input<String> secretId;
  /// The ID of the PagerDuty service that the response plan associates with an incident when it launches.
  final pulumi.Input<String> serviceId;

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
    return <String, dynamic>{
      'name': name,
      'secretId': secretId,
      'serviceId': serviceId,
    };
  }

  factory GetResponsePlanIntegrationPagerduty.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIntegrationPagerduty(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

