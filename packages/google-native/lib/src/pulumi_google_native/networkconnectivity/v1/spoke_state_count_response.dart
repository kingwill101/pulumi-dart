// ignore_for_file: unused_element, unnecessary_cast

/// The number of spokes that are in a particular state and associated with a given hub.
class SpokeStateCountResponse {
  /// The total number of spokes that are in this state and associated with a given hub.
  final String count;

  /// The state of the spokes.
  final String state;

  SpokeStateCountResponse({
    required this.count,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['state'] = state;
    return map;
  }

  factory SpokeStateCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeStateCountResponse(
      count: map['count'] as String,
      state: map['state'] as String,
    );
  }
}
