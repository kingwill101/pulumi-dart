// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointConnectionLogOption {
  final String cloudwatchLogGroup;
  final String cloudwatchLogStream;
  final bool enabled;

  /// Creates a new [GetEndpointConnectionLogOption].
  /// [cloudwatchLogGroup] Required.
  /// [cloudwatchLogStream] Required.
  /// [enabled] Required.
  GetEndpointConnectionLogOption({
    required this.cloudwatchLogGroup,
    required this.cloudwatchLogStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroup': cloudwatchLogGroup,
      'cloudwatchLogStream': cloudwatchLogStream,
      'enabled': enabled,
    };
  }

  factory GetEndpointConnectionLogOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionLogOption(
      cloudwatchLogGroup: map['cloudwatchLogGroup'] as String,
      cloudwatchLogStream: map['cloudwatchLogStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
