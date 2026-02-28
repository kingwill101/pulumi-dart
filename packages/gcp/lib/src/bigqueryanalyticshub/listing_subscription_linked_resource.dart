// ignore_for_file: unused_element, unnecessary_cast

class ListingSubscriptionLinkedResource {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final String? linkedDataset;

  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final String? listing;

  /// Creates a new [ListingSubscriptionLinkedResource].
  /// [linkedDataset] (Output)
  /// [listing] (Output)
  ListingSubscriptionLinkedResource({
    this.linkedDataset,
    this.listing,
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
    return map;
  }

  factory ListingSubscriptionLinkedResource.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionLinkedResource(
      linkedDataset:
          map['linkedDataset'] == null ? null : map['linkedDataset'] as String,
      listing: map['listing'] == null ? null : map['listing'] as String,
    );
  }
}
