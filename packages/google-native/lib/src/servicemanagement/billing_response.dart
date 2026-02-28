// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_destination_response.dart';

/// Billing related configuration of the service. The following example shows how to configure monitored resources and metrics for billing, `consumer_destinations` is the only supported destination and the monitored resources need at least one label key `cloud.googleapis.com/location` to indicate the location of the billing usage, using different monitored resources between monitoring and billing is recommended so they can be evolved independently: monitored_resources: - type: library.googleapis.com/billing_branch labels: - key: cloud.googleapis.com/location description: | Predefined label to support billing location restriction. - key: city description: | Custom label to define the city where the library branch is located in. - key: name description: Custom label to define the name of the library branch. metrics: - name: library.googleapis.com/book/borrowed_count metric_kind: DELTA value_type: INT64 unit: "1" billing: consumer_destinations: - monitored_resource: library.googleapis.com/billing_branch metrics: - library.googleapis.com/book/borrowed_count
class BillingResponse {
  /// Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.
  final List<BillingDestinationResponse> consumerDestinations;

  /// Creates a new [BillingResponse].
  /// [consumerDestinations] Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.
  BillingResponse({
    required this.consumerDestinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerDestinations'] = pulumi.Input.encodeList<
        BillingDestinationResponse,
        Map<String, dynamic>>(consumerDestinations, (value) => value.toMap());
    return map;
  }

  factory BillingResponse.fromMap(Map<String, dynamic> map) {
    return BillingResponse(
      consumerDestinations: pulumi.Input.decodeList<BillingDestinationResponse>(
          map['consumerDestinations'],
          (value) => BillingDestinationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
