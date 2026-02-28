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
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory MulticastConsumerAssociationState.fromMap(Map<String, dynamic> map) {
    return MulticastConsumerAssociationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

