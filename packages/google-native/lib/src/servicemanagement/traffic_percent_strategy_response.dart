// ignore_for_file: unused_element, unnecessary_cast

/// Strategy that specifies how clients of Google Service Controller want to send traffic to use different config versions. This is generally used by API proxy to split traffic based on your configured percentage for each config version. One example of how to gradually rollout a new service configuration using this strategy: Day 1 Rollout { id: "example.googleapis.com/rollout_20160206" traffic_percent_strategy { percentages: { "example.googleapis.com/20160201": 70.00 "example.googleapis.com/20160206": 30.00 } } } Day 2 Rollout { id: "example.googleapis.com/rollout_20160207" traffic_percent_strategy: { percentages: { "example.googleapis.com/20160206": 100.00 } } }
class TrafficPercentStrategyResponse {
  /// Maps service configuration IDs to their corresponding traffic percentage. Key is the service configuration ID, Value is the traffic percentage which must be greater than 0.0 and the sum must equal to 100.0.
  final Map<String, String> percentages;

  /// Creates a new [TrafficPercentStrategyResponse].
  /// [percentages] Maps service configuration IDs to their corresponding traffic percentage. Key is the service configuration ID, Value is the traffic percentage which must be greater than 0.0 and the sum must equal to 100.0.
  TrafficPercentStrategyResponse({
    required this.percentages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['percentages'] = percentages;
    return map;
  }

  factory TrafficPercentStrategyResponse.fromMap(Map<String, dynamic> map) {
    return TrafficPercentStrategyResponse(
      percentages: (map['percentages'] as Map).cast<String, String>(),
    );
  }
}
