// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listPrivateStoreSubscriptionsContext.
class ListPrivateStoreSubscriptionsContextResult {
  final List<String>? subscriptionsIds;

  /// Creates a new [ListPrivateStoreSubscriptionsContextResult].
  /// [subscriptionsIds] Optional.
  ListPrivateStoreSubscriptionsContextResult({
    this.subscriptionsIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionsIds': ?subscriptionsIds,
    };
  }

  factory ListPrivateStoreSubscriptionsContextResult.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreSubscriptionsContextResult(
      subscriptionsIds: map['subscriptionsIds'] == null ? null : (map['subscriptionsIds']! as List).cast<String>(),
    );
  }
}

