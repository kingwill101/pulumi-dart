// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_destination_dataset.dart';

/// {@template pulumi_bigqueryanalyticshub_data_exchange_subscription_data_exchange_subscription_args_doc}
/// The set of arguments for DataExchangeSubscription.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_data_exchange_subscription_data_exchange_subscription_args_doc}
class DataExchangeSubscriptionArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;
  /// The name of the location of the Data Exchange.
  final pulumi.Input<String> dataExchangeLocation;
  /// The ID of the Google Cloud project where the Data Exchange is located.
  final pulumi.Input<String> dataExchangeProject;
  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSubscriptionDestinationDataset>? destinationDataset;
  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? refreshPolicy;
  /// Email of the subscriber.
  final pulumi.Input<String>? subscriberContact;
  /// Name of the subscription to create.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [DataExchangeSubscriptionArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataExchangeLocation] The name of the location of the Data Exchange.
  /// [dataExchangeProject] The ID of the Google Cloud project where the Data Exchange is located.
  /// [destinationDataset] BigQuery destination dataset to create for the subscriber.
  /// [location] The geographic location where the Subscription (and its linked dataset) should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [refreshPolicy] Optional.
  /// [subscriberContact] Email of the subscriber.
  /// [subscriptionId] Name of the subscription to create.
  DataExchangeSubscriptionArgs({
    required String dataExchangeId,
    required String dataExchangeLocation,
    required String dataExchangeProject,
    DataExchangeSubscriptionDestinationDataset? destinationDataset,
    required String location,
    String? project,
    String? refreshPolicy,
    String? subscriberContact,
    required String subscriptionId,
  }) :
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      dataExchangeLocation = pulumi.Input.asInput<String>(dataExchangeLocation),
      dataExchangeProject = pulumi.Input.asInput<String>(dataExchangeProject),
      destinationDataset = pulumi.Input.asOptionalInput<DataExchangeSubscriptionDestinationDataset>(destinationDataset),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      refreshPolicy = pulumi.Input.asOptionalInput<String>(refreshPolicy),
      subscriberContact = pulumi.Input.asOptionalInput<String>(subscriberContact),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'dataExchangeLocation': dataExchangeLocation,
      'dataExchangeProject': dataExchangeProject,
      'destinationDataset': ?pulumi.Input.mapOptionalInputValue<DataExchangeSubscriptionDestinationDataset, Map<String, dynamic>>(destinationDataset, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'refreshPolicy': ?refreshPolicy,
      'subscriberContact': ?subscriberContact,
      'subscriptionId': subscriptionId,
    };
  }

  factory DataExchangeSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionArgs(
      dataExchangeId: map['dataExchangeId'] as String,
      dataExchangeLocation: map['dataExchangeLocation'] as String,
      dataExchangeProject: map['dataExchangeProject'] as String,
      destinationDataset: map['destinationDataset'] == null ? null : DataExchangeSubscriptionDestinationDataset.fromMap((map['destinationDataset'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      refreshPolicy: map['refreshPolicy'] == null ? null : map['refreshPolicy'] as String,
      subscriberContact: map['subscriberContact'] == null ? null : map['subscriberContact'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

