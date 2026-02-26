// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_exchange_subscription_destination_dataset/data_exchange_subscription_destination_dataset.dart';

/// The set of arguments for DataExchangeSubscription.
class DataExchangeSubscriptionArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final Input<String> dataExchangeId;

  /// The name of the location of the Data Exchange.
  final Input<String> dataExchangeLocation;

  /// The ID of the Google Cloud project where the Data Exchange is located.
  final Input<String> dataExchangeProject;

  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  final Input<DataExchangeSubscriptionDestinationDataset>? destinationDataset;

  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;
  final Input<String>? refreshPolicy;

  /// Email of the subscriber.
  final Input<String>? subscriberContact;

  /// Name of the subscription to create.
  final Input<String> subscriptionId;

  DataExchangeSubscriptionArgs({
    required this.dataExchangeId,
    required this.dataExchangeLocation,
    required this.dataExchangeProject,
    this.destinationDataset,
    required this.location,
    this.project,
    this.refreshPolicy,
    this.subscriberContact,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['dataExchangeLocation'] = dataExchangeLocation;
    map['dataExchangeProject'] = dataExchangeProject;
    final destinationDatasetValue = destinationDataset;
    if (destinationDatasetValue != null) {
      map['destinationDataset'] = Input.mapOptionalInputValue<
              DataExchangeSubscriptionDestinationDataset, Map<String, dynamic>>(
          destinationDatasetValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final refreshPolicyValue = refreshPolicy;
    if (refreshPolicyValue != null) {
      map['refreshPolicy'] = refreshPolicyValue;
    }
    final subscriberContactValue = subscriberContact;
    if (subscriberContactValue != null) {
      map['subscriberContact'] = subscriberContactValue;
    }
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory DataExchangeSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionArgs(
      dataExchangeId: Input.asInput<String>(map['dataExchangeId']),
      dataExchangeLocation: Input.asInput<String>(map['dataExchangeLocation']),
      dataExchangeProject: Input.asInput<String>(map['dataExchangeProject']),
      destinationDataset:
          Input.asOptionalInput<DataExchangeSubscriptionDestinationDataset>(
              map['destinationDataset']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      refreshPolicy: Input.asOptionalInput<String>(map['refreshPolicy']),
      subscriberContact:
          Input.asOptionalInput<String>(map['subscriberContact']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
