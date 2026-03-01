// ignore_for_file: unused_element, unnecessary_cast

class MulticastGroupRangeState {
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

  /// Creates a new [MulticastGroupRangeState].
  /// [state] (Output)
  MulticastGroupRangeState({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory MulticastGroupRangeState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeState(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
