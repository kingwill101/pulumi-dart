// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupConsumerActivationState {
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

  /// Creates a new [MulticastGroupConsumerActivationState].
  /// [state] (Output)
  MulticastGroupConsumerActivationState({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory MulticastGroupConsumerActivationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return MulticastGroupConsumerActivationState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
