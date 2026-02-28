// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureResourceState {
  /// Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  final bool hasResources;

  /// The current state of the Feature resource in the Hub API.
  final String state;

  /// Creates a new [GetFeatureResourceState].
  /// [hasResources] Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  /// [state] The current state of the Feature resource in the Hub API.
  GetFeatureResourceState({
    required this.hasResources,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hasResources'] = hasResources;
    map['state'] = state;
    return map;
  }

  factory GetFeatureResourceState.fromMap(Map<String, dynamic> map) {
    return GetFeatureResourceState(
      hasResources: map['hasResources'] as bool,
      state: map['state'] as String,
    );
  }
}
