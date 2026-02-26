// ignore_for_file: unused_element, unnecessary_cast

import '../data_exchange_subscription_destination_dataset_dataset_reference/data_exchange_subscription_destination_dataset_dataset_reference.dart';

class DataExchangeSubscriptionDestinationDataset {
  /// A reference that identifies the destination dataset.
  /// Structure is documented below.
  final DataExchangeSubscriptionDestinationDatasetDatasetReference
      datasetReference;

  /// A user-friendly description of the dataset.
  final String? description;

  /// A descriptive name for the dataset.
  final String? friendlyName;

  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  final Map<String, String>? labels;

  /// The geographic location where the dataset should reside.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final String location;

  DataExchangeSubscriptionDestinationDataset({
    required this.datasetReference,
    this.description,
    this.friendlyName,
    this.labels,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetReference'] = datasetReference.toMap();
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final friendlyNameValue = friendlyName;
    if (friendlyNameValue != null) {
      map['friendlyName'] = friendlyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    return map;
  }

  factory DataExchangeSubscriptionDestinationDataset.fromMap(
      Map<String, dynamic> map) {
    return DataExchangeSubscriptionDestinationDataset(
      datasetReference:
          DataExchangeSubscriptionDestinationDatasetDatasetReference.fromMap(
              (map['datasetReference'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      friendlyName:
          map['friendlyName'] == null ? null : map['friendlyName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
    );
  }
}
