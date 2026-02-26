// ignore_for_file: unused_element, unnecessary_cast

class MulticastDomainActivationState {
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

  MulticastDomainActivationState({
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

  factory MulticastDomainActivationState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
