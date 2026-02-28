// ignore_for_file: unused_element, unnecessary_cast

class MulticastProducerAssociationState {
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

  /// Creates a new [MulticastProducerAssociationState].
  /// [state] (Output)
  MulticastProducerAssociationState({
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

  factory MulticastProducerAssociationState.fromMap(Map<String, dynamic> map) {
    return MulticastProducerAssociationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
