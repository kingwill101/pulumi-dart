// ignore_for_file: unused_element, unnecessary_cast

class MulticastDomainState {
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

  MulticastDomainState({
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

  factory MulticastDomainState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
