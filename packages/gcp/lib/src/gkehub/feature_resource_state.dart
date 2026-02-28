// ignore_for_file: unused_element, unnecessary_cast

class FeatureResourceState {
  /// (Output)
  /// Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  final bool? hasResources;

  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final String? state;

  /// Creates a new [FeatureResourceState].
  /// [hasResources] (Output)
  /// [state] (Output)
  FeatureResourceState({
    this.hasResources,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hasResourcesValue = hasResources;
    if (hasResourcesValue != null) {
      map['hasResources'] = hasResourcesValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory FeatureResourceState.fromMap(Map<String, dynamic> map) {
    return FeatureResourceState(
      hasResources:
          map['hasResources'] == null ? null : map['hasResources'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
