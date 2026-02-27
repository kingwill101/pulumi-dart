// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listing_subscription_destination_dataset/listing_subscription_destination_dataset.dart';

/// The set of arguments for ListingSubscription.
class ListingSubscriptionArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;

  /// The destination dataset for this subscription.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationDataset> destinationDataset;

  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> listingId;

  /// The name of the location of the data exchange. Distinct from the location of the destination data set.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ListingSubscriptionArgs({
    required this.dataExchangeId,
    required this.destinationDataset,
    required this.listingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['destinationDataset'] = pulumi.Input.mapInputValue<
        ListingSubscriptionDestinationDataset,
        Map<String, dynamic>>(destinationDataset, (value) => value.toMap());
    map['listingId'] = listingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ListingSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionArgs(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      destinationDataset:
          pulumi.Input.asInput<ListingSubscriptionDestinationDataset>(
              map['destinationDataset']),
      listingId: pulumi.Input.asInput<String>(map['listingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
