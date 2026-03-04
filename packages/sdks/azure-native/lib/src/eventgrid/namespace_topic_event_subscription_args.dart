// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_configuration.dart';
import 'filters_configuration.dart';

/// {@template pulumi_eventgrid_namespace_topic_event_subscription_args_doc}
/// The set of arguments for NamespaceTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_namespace_topic_event_subscription_args_doc}
class NamespaceTopicEventSubscriptionArgs {
  /// Information about the delivery configuration of the event subscription.
  final pulumi.Input<DeliveryConfiguration>? deliveryConfiguration;

  /// The event delivery schema for the event subscription.
  final pulumi.Input<String>? eventDeliverySchema;

  /// Name of the event subscription to be created. Event subscription names must be between 3 and 50 characters in length and use alphanumeric letters only.
  final pulumi.Input<String>? eventSubscriptionName;

  /// Expiration time of the event subscription.
  final pulumi.Input<String>? expirationTimeUtc;

  /// Information about the filter for the event subscription.
  final pulumi.Input<FiltersConfiguration>? filtersConfiguration;

  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the namespace topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [NamespaceTopicEventSubscriptionArgs].
  /// [deliveryConfiguration] Information about the delivery configuration of the event subscription.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [eventSubscriptionName] Name of the event subscription to be created. Event subscription names must be between 3 and 50 characters in length and use alphanumeric letters only.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filtersConfiguration] Information about the filter for the event subscription.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the namespace topic.
  NamespaceTopicEventSubscriptionArgs({
    this.deliveryConfiguration,
    this.eventDeliverySchema,
    this.eventSubscriptionName,
    this.expirationTimeUtc,
    this.filtersConfiguration,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryConfiguration,
            Map<String, dynamic>
          >(deliveryConfiguration, (value) => value.toMap()),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventSubscriptionName': ?eventSubscriptionName,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filtersConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            FiltersConfiguration,
            Map<String, dynamic>
          >(filtersConfiguration, (value) => value.toMap()),
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory NamespaceTopicEventSubscriptionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NamespaceTopicEventSubscriptionArgs(
      deliveryConfiguration: (() {
        final guardedValue = map['deliveryConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eventDeliverySchema: (() {
        final guardedValue = map['eventDeliverySchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSubscriptionName: (() {
        final guardedValue = map['eventSubscriptionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirationTimeUtc: (() {
        final guardedValue = map['expirationTimeUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filtersConfiguration: (() {
        final guardedValue = map['filtersConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FiltersConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
