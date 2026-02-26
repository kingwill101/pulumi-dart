// ignore_for_file: unused_element, unnecessary_cast

/// A single rollout step with specified traffic allocation.
class GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStepResponse {
  /// The name of the rollout step;
  final String displayName;

  /// The minimum time that this step should last. Should be longer than 1 hour. If not set, the default minimum duration for each step will be 1 hour.
  final String minDuration;

  /// The percentage of traffic allocated to the flow version of this rollout step. (0%, 100%].
  final int trafficPercent;

  GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStepResponse({
    required this.displayName,
    required this.minDuration,
    required this.trafficPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['minDuration'] = minDuration;
    map['trafficPercent'] = trafficPercent;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStepResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStepResponse(
      displayName: map['displayName'] as String,
      minDuration: map['minDuration'] as String,
      trafficPercent: map['trafficPercent'] as int,
    );
  }
}
