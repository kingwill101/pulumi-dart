// ignore_for_file: unused_element, unnecessary_cast


/// Action that need to performed.
class NetworkTapRuleActionResponse {
  /// Destination Id. The ARM resource Id may be either Network To Network Interconnect or NeighborGroup.
  final String? destinationId;
  /// The parameter to enable or disable the timestamp.
  final String? isTimestampEnabled;
  /// The name of the match configuration. This is used when Goto type is provided. If Goto type is selected and no match configuration name is provided. It goes to next configuration.
  final String? matchConfigurationName;
  /// Truncate. 0 indicates do not truncate.
  final String? truncate;
  /// Type of actions that can be performed.
  final String? type;

  /// Creates a new [NetworkTapRuleActionResponse].
  /// [destinationId] Destination Id. The ARM resource Id may be either Network To Network Interconnect or NeighborGroup.
  /// [isTimestampEnabled] The parameter to enable or disable the timestamp.
  /// [matchConfigurationName] The name of the match configuration. This is used when Goto type is provided. If Goto type is selected and no match configuration name is provided. It goes to next configuration.
  /// [truncate] Truncate. 0 indicates do not truncate.
  /// [type] Type of actions that can be performed.
  NetworkTapRuleActionResponse({
    this.destinationId,
    this.isTimestampEnabled,
    this.matchConfigurationName,
    this.truncate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationId': ?destinationId,
      'isTimestampEnabled': ?isTimestampEnabled,
      'matchConfigurationName': ?matchConfigurationName,
      'truncate': ?truncate,
      'type': ?type,
    };
  }

  factory NetworkTapRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleActionResponse(
      destinationId: map['destinationId'] == null ? null : map['destinationId'] as String,
      isTimestampEnabled: map['isTimestampEnabled'] == null ? null : map['isTimestampEnabled'] as String,
      matchConfigurationName: map['matchConfigurationName'] == null ? null : map['matchConfigurationName'] as String,
      truncate: map['truncate'] == null ? null : map['truncate'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

