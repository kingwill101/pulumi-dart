// ignore_for_file: unused_element, unnecessary_cast


/// Application Gateway global configuration.
class ApplicationGatewayGlobalConfiguration {
  /// Enable request buffering.
  final bool? enableRequestBuffering;
  /// Enable response buffering.
  final bool? enableResponseBuffering;

  /// Creates a new [ApplicationGatewayGlobalConfiguration].
  /// [enableRequestBuffering] Enable request buffering.
  /// [enableResponseBuffering] Enable response buffering.
  ApplicationGatewayGlobalConfiguration({
    this.enableRequestBuffering,
    this.enableResponseBuffering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRequestBuffering': ?enableRequestBuffering,
      'enableResponseBuffering': ?enableResponseBuffering,
    };
  }

  factory ApplicationGatewayGlobalConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGlobalConfiguration(
      enableRequestBuffering: map['enableRequestBuffering'] == null ? null : map['enableRequestBuffering'] as bool,
      enableResponseBuffering: map['enableResponseBuffering'] == null ? null : map['enableResponseBuffering'] as bool,
    );
  }
}

