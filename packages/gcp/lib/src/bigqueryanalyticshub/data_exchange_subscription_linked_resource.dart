// ignore_for_file: unused_element, unnecessary_cast

class DataExchangeSubscriptionLinkedResource {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final String? linkedDataset;

  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final String? listing;

  /// Creates a new [DataExchangeSubscriptionLinkedResource].
  /// [linkedDataset] (Output)
  /// [listing] (Output)
  DataExchangeSubscriptionLinkedResource({this.linkedDataset, this.listing});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedDataset': ?linkedDataset,
      'listing': ?listing,
    };
  }

  factory DataExchangeSubscriptionLinkedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataExchangeSubscriptionLinkedResource(
      linkedDataset: map['linkedDataset'] == null
          ? null
          : map['linkedDataset'] as String,
      listing: map['listing'] == null ? null : map['listing'] as String,
    );
  }
}
