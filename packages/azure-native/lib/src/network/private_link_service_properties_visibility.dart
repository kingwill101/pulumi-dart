// ignore_for_file: unused_element, unnecessary_cast


/// The visibility list of the private link service.
class PrivateLinkServicePropertiesVisibility {
  /// The list of subscriptions.
  final List<String>? subscriptions;

  /// Creates a new [PrivateLinkServicePropertiesVisibility].
  /// [subscriptions] The list of subscriptions.
  PrivateLinkServicePropertiesVisibility({
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptions': ?subscriptions,
    };
  }

  factory PrivateLinkServicePropertiesVisibility.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicePropertiesVisibility(
      subscriptions: map['subscriptions'] == null ? null : (map['subscriptions'] as List).cast<String>(),
    );
  }
}

