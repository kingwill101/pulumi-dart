// ignore_for_file: unused_element, unnecessary_cast

class MulticastDomainGroupState {
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

  MulticastDomainGroupState({
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

  factory MulticastDomainGroupState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainGroupState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
