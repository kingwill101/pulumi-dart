// ignore_for_file: unused_element, unnecessary_cast

class ListingSubscriptionLinkedDatasetMap {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final String? linkedDataset;

  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final String? listing;

  /// (Required) The identifier for this object. Format specified above.
  final String resourceName;

  ListingSubscriptionLinkedDatasetMap({
    this.linkedDataset,
    this.listing,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final linkedDatasetValue = linkedDataset;
    if (linkedDatasetValue != null) {
      map['linkedDataset'] = linkedDatasetValue;
    }
    final listingValue = listing;
    if (listingValue != null) {
      map['listing'] = listingValue;
    }
    map['resourceName'] = resourceName;
    return map;
  }

  factory ListingSubscriptionLinkedDatasetMap.fromMap(
      Map<String, dynamic> map) {
    return ListingSubscriptionLinkedDatasetMap(
      linkedDataset:
          map['linkedDataset'] == null ? null : map['linkedDataset'] as String,
      listing: map['listing'] == null ? null : map['listing'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}
