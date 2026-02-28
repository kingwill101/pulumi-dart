// ignore_for_file: unused_element, unnecessary_cast

/// FeatureResourceState describes the state of a Feature *resource* in the GkeHub API. See `FeatureState` for the "running state" of the Feature in the Hub and across Memberships.
class FeatureResourceStateResponseGkehubV1alpha {
  /// The current state of the Feature resource in the Hub API.
  final String state;

  /// Creates a new [FeatureResourceStateResponseGkehubV1alpha].
  /// [state] The current state of the Feature resource in the Hub API.
  FeatureResourceStateResponseGkehubV1alpha({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory FeatureResourceStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FeatureResourceStateResponseGkehubV1alpha(
      state: map['state'] as String,
    );
  }
}
