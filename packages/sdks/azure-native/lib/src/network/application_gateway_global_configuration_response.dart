// ignore_for_file: unused_element, unnecessary_cast


/// Application Gateway global configuration.
class ApplicationGatewayGlobalConfigurationResponse {
  /// Enable request buffering.
  final bool? enableRequestBuffering;
  /// Enable response buffering.
  final bool? enableResponseBuffering;

  /// Creates a new [ApplicationGatewayGlobalConfigurationResponse].
  /// [enableRequestBuffering] Enable request buffering.
  /// [enableResponseBuffering] Enable response buffering.
  ApplicationGatewayGlobalConfigurationResponse({
    this.enableRequestBuffering,
    this.enableResponseBuffering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRequestBuffering': ?enableRequestBuffering,
      'enableResponseBuffering': ?enableResponseBuffering,
    };
  }

  factory ApplicationGatewayGlobalConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGlobalConfigurationResponse(
      enableRequestBuffering: map['enableRequestBuffering'] == null ? null : map['enableRequestBuffering'] as bool,
      enableResponseBuffering: map['enableResponseBuffering'] == null ? null : map['enableResponseBuffering'] as bool,
    );
  }
}

