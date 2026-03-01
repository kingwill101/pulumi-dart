// ignore_for_file: unused_element, unnecessary_cast


/// Constraints for Fault Simulation action.
class FaultSimulationConstraintsResponse {
  /// The absolute expiration timestamp (UTC) after which this fault simulation should be stopped if it's still active.
  final String? expirationTime;

  /// Creates a new [FaultSimulationConstraintsResponse].
  /// [expirationTime] The absolute expiration timestamp (UTC) after which this fault simulation should be stopped if it's still active.
  FaultSimulationConstraintsResponse({
    this.expirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
    };
  }

  factory FaultSimulationConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return FaultSimulationConstraintsResponse(
      expirationTime: map['expirationTime'] == null ? null : map['expirationTime'] as String,
    );
  }
}

