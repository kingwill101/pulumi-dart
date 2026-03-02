// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePlanIntegrationPagerduty {
  /// The name of the PagerDuty configuration.
  final pulumi.Input<String> name;
  /// The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  ///
  /// For more information about the constraints for each field, see [CreateResponsePlan](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_CreateResponsePlan.html) in the *AWS Systems Manager Incident Manager API Reference*.
  final pulumi.Input<String> secretId;
  /// The ID of the PagerDuty service that the response plan associated with the incident at launch.
  final pulumi.Input<String> serviceId;

  /// Creates a new [ResponsePlanIntegrationPagerduty].
  /// [name] The name of the PagerDuty configuration.
  /// [secretId] The ID of the AWS Secrets Manager secret that stores your PagerDuty key &mdash; either a General Access REST API Key or User Token REST API Key &mdash; and other user credentials.
  /// [serviceId] The ID of the PagerDuty service that the response plan associated with the incident at launch.
  ResponsePlanIntegrationPagerduty({
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

  factory ResponsePlanIntegrationPagerduty.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIntegrationPagerduty(
      name: (map['name'] as String).input(),
      secretId: (map['secretId'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

