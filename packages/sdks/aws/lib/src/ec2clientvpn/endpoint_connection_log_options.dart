// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConnectionLogOptions {
  /// The name of the CloudWatch Logs log group.
  final pulumi.Input<String>? cloudwatchLogGroup;
  /// The name of the CloudWatch Logs log stream to which the connection data is published.
  final pulumi.Input<String>? cloudwatchLogStream;
  /// Indicates whether connection logging is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [EndpointConnectionLogOptions].
  /// [cloudwatchLogGroup] The name of the CloudWatch Logs log group.
  /// [cloudwatchLogStream] The name of the CloudWatch Logs log stream to which the connection data is published.
  /// [enabled] Indicates whether connection logging is enabled.
  EndpointConnectionLogOptions({
    this.cloudwatchLogGroup,
    this.cloudwatchLogStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroup': ?cloudwatchLogGroup,
      'cloudwatchLogStream': ?cloudwatchLogStream,
      'enabled': enabled,
    };
  }

  factory EndpointConnectionLogOptions.fromMap(Map<String, dynamic> map) {
    return EndpointConnectionLogOptions(
      cloudwatchLogGroup: map['cloudwatchLogGroup'] == null ? null : ((map['cloudwatchLogGroup'] as String).input()).input(),
      cloudwatchLogStream: map['cloudwatchLogStream'] == null ? null : ((map['cloudwatchLogStream'] as String).input()).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

