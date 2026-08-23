// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryRadiusSetting {
  /// The protocol specified for your RADIUS endpoints.
  final pulumi.Input<String> authenticationProtocol;
  /// Display label.
  final pulumi.Input<String> displayLabel;
  /// Port that your RADIUS server is using for communications.
  final pulumi.Input<int> radiusPort;
  /// Maximum number of times that communication with the RADIUS server is attempted.
  final pulumi.Input<int> radiusRetries;
  /// Set of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final pulumi.Input<List<String>> radiusServers;
  /// Amount of time, in seconds, to wait for the RADIUS server to respond.
  final pulumi.Input<int> radiusTimeout;
  /// Not currently used.
  final pulumi.Input<bool> useSameUsername;

  /// Creates a new [GetDirectoryRadiusSetting].
  /// [authenticationProtocol] The protocol specified for your RADIUS endpoints.
  /// [displayLabel] Display label.
  /// [radiusPort] Port that your RADIUS server is using for communications.
  /// [radiusRetries] Maximum number of times that communication with the RADIUS server is attempted.
  /// [radiusServers] Set of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  /// [radiusTimeout] Amount of time, in seconds, to wait for the RADIUS server to respond.
  /// [useSameUsername] Not currently used.
  const GetDirectoryRadiusSetting({
    required this.authenticationProtocol,
    required this.displayLabel,
    required this.radiusPort,
    required this.radiusRetries,
    required this.radiusServers,
    required this.radiusTimeout,
    required this.useSameUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProtocol': authenticationProtocol,
      'displayLabel': displayLabel,
      'radiusPort': radiusPort,
      'radiusRetries': radiusRetries,
      'radiusServers': radiusServers,
      'radiusTimeout': radiusTimeout,
      'useSameUsername': useSameUsername,
    };
  }

  factory GetDirectoryRadiusSetting.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRadiusSetting(
      authenticationProtocol: pulumi.Input.fromValue(map['authenticationProtocol'] as String),
      displayLabel: pulumi.Input.fromValue(map['displayLabel'] as String),
      radiusPort: pulumi.Input.fromValue(map['radiusPort'] as int),
      radiusRetries: pulumi.Input.fromValue(map['radiusRetries'] as int),
      radiusServers: pulumi.Input.fromValue((map['radiusServers'] as List).cast<String>()),
      radiusTimeout: pulumi.Input.fromValue(map['radiusTimeout'] as int),
      useSameUsername: pulumi.Input.fromValue(map['useSameUsername'] as bool),
    );
  }
}
