// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'logging_destination.dart';

/// Logging configuration of the service. The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the `activity_history` log is sent to both the producer and consumer projects, whereas the `purchase_history` log is only sent to the producer project. monitored_resources: - type: library.googleapis.com/branch labels: - key: /city description: The city where the library branch is located in. - key: /name description: The name of the branch. logs: - name: activity_history labels: - key: /customer_id - name: purchase_history logging: producer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history - purchase_history consumer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history
class Logging {
  /// Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination.
  final List<LoggingDestination>? consumerDestinations;

  /// Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination.
  final List<LoggingDestination>? producerDestinations;

  Logging({
    this.consumerDestinations,
    this.producerDestinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerDestinationsValue = consumerDestinations;
    if (consumerDestinationsValue != null) {
      map['consumerDestinations'] =
          Input.encodeList<LoggingDestination, Map<String, dynamic>>(
              consumerDestinationsValue, (value) => value.toMap());
    }
    final producerDestinationsValue = producerDestinations;
    if (producerDestinationsValue != null) {
      map['producerDestinations'] =
          Input.encodeList<LoggingDestination, Map<String, dynamic>>(
              producerDestinationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Logging.fromMap(Map<String, dynamic> map) {
    return Logging(
      consumerDestinations: map['consumerDestinations'] == null
          ? null
          : Input.decodeList<LoggingDestination>(
              map['consumerDestinations'],
              (value) => LoggingDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      producerDestinations: map['producerDestinations'] == null
          ? null
          : Input.decodeList<LoggingDestination>(
              map['producerDestinations'],
              (value) => LoggingDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
