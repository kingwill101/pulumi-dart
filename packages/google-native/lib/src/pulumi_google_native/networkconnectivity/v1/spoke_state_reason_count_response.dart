// ignore_for_file: unused_element, unnecessary_cast

/// The number of spokes in the hub that are inactive for this reason.
class SpokeStateReasonCountResponse {
  /// The total number of spokes that are inactive for a particular reason and associated with a given hub.
  final String count;

  /// The reason that a spoke is inactive.
  final String stateReasonCode;

  SpokeStateReasonCountResponse({
    required this.count,
    required this.stateReasonCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['stateReasonCode'] = stateReasonCode;
    return map;
  }

  factory SpokeStateReasonCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeStateReasonCountResponse(
      count: map['count'] as String,
      stateReasonCode: map['stateReasonCode'] as String,
    );
  }
}
