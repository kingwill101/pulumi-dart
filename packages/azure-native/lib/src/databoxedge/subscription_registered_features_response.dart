// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionRegisteredFeaturesResponse {
  final String? name;
  final String? state;

  /// Creates a new [SubscriptionRegisteredFeaturesResponse].
  /// [name] Optional.
  /// [state] Optional.
  SubscriptionRegisteredFeaturesResponse({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory SubscriptionRegisteredFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionRegisteredFeaturesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

