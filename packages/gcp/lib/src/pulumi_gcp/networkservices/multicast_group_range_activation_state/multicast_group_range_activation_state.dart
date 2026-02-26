// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupRangeActivationState {
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final String? state;

  MulticastGroupRangeActivationState({
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory MulticastGroupRangeActivationState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeActivationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
