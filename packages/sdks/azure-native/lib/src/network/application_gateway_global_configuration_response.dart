// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway global configuration.
class ApplicationGatewayGlobalConfigurationResponse {
  /// Enable request buffering.
  final pulumi.Input<bool>? enableRequestBuffering;
  /// Enable response buffering.
  final pulumi.Input<bool>? enableResponseBuffering;

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
      enableRequestBuffering: map['enableRequestBuffering'] == null ? null : (map['enableRequestBuffering'] as bool).input(),
      enableResponseBuffering: map['enableResponseBuffering'] == null ? null : (map['enableResponseBuffering'] as bool).input(),
    );
  }
}

