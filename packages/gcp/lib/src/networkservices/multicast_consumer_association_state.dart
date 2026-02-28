// ignore_for_file: unused_element, unnecessary_cast

class MulticastConsumerAssociationState {
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

  /// Creates a new [MulticastConsumerAssociationState].
  /// [state] (Output)
  MulticastConsumerAssociationState({
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

  factory MulticastConsumerAssociationState.fromMap(Map<String, dynamic> map) {
    return MulticastConsumerAssociationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
