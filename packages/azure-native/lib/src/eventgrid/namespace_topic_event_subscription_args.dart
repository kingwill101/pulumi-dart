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
    DeliveryConfiguration? deliveryConfiguration,
    String? eventDeliverySchema,
    String? eventSubscriptionName,
    String? expirationTimeUtc,
    FiltersConfiguration? filtersConfiguration,
    required String namespaceName,
    required String resourceGroupName,
    required String topicName,
  }) :
      deliveryConfiguration = pulumi.Input.asOptionalInput<DeliveryConfiguration>(deliveryConfiguration),
      eventDeliverySchema = pulumi.Input.asOptionalInput<String>(eventDeliverySchema),
      eventSubscriptionName = pulumi.Input.asOptionalInput<String>(eventSubscriptionName),
      expirationTimeUtc = pulumi.Input.asOptionalInput<String>(expirationTimeUtc),
      filtersConfiguration = pulumi.Input.asOptionalInput<FiltersConfiguration>(filtersConfiguration),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfiguration': ?pulumi.Input.mapOptionalInputValue<DeliveryConfiguration, Map<String, dynamic>>(deliveryConfiguration, (value) => value.toMap()),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventSubscriptionName': ?eventSubscriptionName,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filtersConfiguration': ?pulumi.Input.mapOptionalInputValue<FiltersConfiguration, Map<String, dynamic>>(filtersConfiguration, (value) => value.toMap()),
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory NamespaceTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicEventSubscriptionArgs(
      deliveryConfiguration: map['deliveryConfiguration'] == null ? null : DeliveryConfiguration.fromMap((map['deliveryConfiguration'] as Map).cast<String, dynamic>()),
      eventDeliverySchema: map['eventDeliverySchema'] == null ? null : map['eventDeliverySchema'] as String,
      eventSubscriptionName: map['eventSubscriptionName'] == null ? null : map['eventSubscriptionName'] as String,
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : map['expirationTimeUtc'] as String,
      filtersConfiguration: map['filtersConfiguration'] == null ? null : FiltersConfiguration.fromMap((map['filtersConfiguration'] as Map).cast<String, dynamic>()),
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

