// ignore_for_file: unused_element, unnecessary_cast


/// The number of spokes that are in a particular state and associated with a given hub.
class SpokeStateCountResponse {
  /// The total number of spokes that are in this state and associated with a given hub.
  final String count;
  /// The state of the spokes.
  final String state;

  /// Creates a new [SpokeStateCountResponse].
  /// [count] The total number of spokes that are in this state and associated with a given hub.
  /// [state] The state of the spokes.
  SpokeStateCountResponse({
    required this.count,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'state': state,
    };
  }

  factory SpokeStateCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeStateCountResponse(
      count: map['count'] as String,
      state: map['state'] as String,
    );
  }
}

