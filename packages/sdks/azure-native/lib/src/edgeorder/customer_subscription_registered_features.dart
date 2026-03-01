// ignore_for_file: unused_element, unnecessary_cast


/// Represents subscription registered features.
class CustomerSubscriptionRegisteredFeatures {
  /// Name of subscription registered feature.
  final String? name;
  /// State of subscription registered feature.
  final String? state;

  /// Creates a new [CustomerSubscriptionRegisteredFeatures].
  /// [name] Name of subscription registered feature.
  /// [state] State of subscription registered feature.
  CustomerSubscriptionRegisteredFeatures({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory CustomerSubscriptionRegisteredFeatures.fromMap(Map<String, dynamic> map) {
    return CustomerSubscriptionRegisteredFeatures(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

