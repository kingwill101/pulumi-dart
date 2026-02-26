// ignore_for_file: unused_element, unnecessary_cast

class AliasRoutingStrategy {
  /// ID of the GameLift Fleet to point the alias to.
  final String? fleetId;

  /// Message text to be used with the `TERMINAL` routing strategy.
  final String? message;

  /// Type of routing strategyE.g., `SIMPLE` or `TERMINAL`
  final String type;

  AliasRoutingStrategy({
    this.fleetId,
    this.message,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fleetIdValue = fleetId;
    if (fleetIdValue != null) {
      map['fleetId'] = fleetIdValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    map['type'] = type;
    return map;
  }

  factory AliasRoutingStrategy.fromMap(Map<String, dynamic> map) {
    return AliasRoutingStrategy(
      fleetId: map['fleetId'] == null ? null : map['fleetId'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      type: map['type'] as String,
    );
  }
}
