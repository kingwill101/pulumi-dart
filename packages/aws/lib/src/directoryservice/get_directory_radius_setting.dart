// ignore_for_file: unused_element, unnecessary_cast

class GetDirectoryRadiusSetting {
  /// The protocol specified for your RADIUS endpoints.
  final String authenticationProtocol;

  /// Display label.
  final String displayLabel;

  /// Port that your RADIUS server is using for communications.
  final int radiusPort;

  /// Maximum number of times that communication with the RADIUS server is attempted.
  final int radiusRetries;

  /// Set of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  final List<String> radiusServers;

  /// Amount of time, in seconds, to wait for the RADIUS server to respond.
  final int radiusTimeout;

  /// Not currently used.
  final bool useSameUsername;

  /// Creates a new [GetDirectoryRadiusSetting].
  /// [authenticationProtocol] The protocol specified for your RADIUS endpoints.
  /// [displayLabel] Display label.
  /// [radiusPort] Port that your RADIUS server is using for communications.
  /// [radiusRetries] Maximum number of times that communication with the RADIUS server is attempted.
  /// [radiusServers] Set of strings that contains the fully qualified domain name (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server load balancer.
  /// [radiusTimeout] Amount of time, in seconds, to wait for the RADIUS server to respond.
  /// [useSameUsername] Not currently used.
  GetDirectoryRadiusSetting({
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
      authenticationProtocol: map['authenticationProtocol'] as String,
      displayLabel: map['displayLabel'] as String,
      radiusPort: map['radiusPort'] as int,
      radiusRetries: map['radiusRetries'] as int,
      radiusServers: (map['radiusServers'] as List).cast<String>(),
      radiusTimeout: map['radiusTimeout'] as int,
      useSameUsername: map['useSameUsername'] as bool,
    );
  }
}
