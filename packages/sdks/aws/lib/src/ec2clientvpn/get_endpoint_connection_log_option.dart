// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointConnectionLogOption {
  final pulumi.Input<String> cloudwatchLogGroup;
  final pulumi.Input<String> cloudwatchLogStream;
  final pulumi.Input<bool> enabled;

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
      cloudwatchLogGroup: pulumi.Input.fromValue(map['cloudwatchLogGroup'] as String),
      cloudwatchLogStream: pulumi.Input.fromValue(map['cloudwatchLogStream'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

