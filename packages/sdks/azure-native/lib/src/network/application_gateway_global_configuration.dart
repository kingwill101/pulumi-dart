// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway global configuration.
class ApplicationGatewayGlobalConfiguration {
  /// Enable request buffering.
  final pulumi.Input<bool>? enableRequestBuffering;
  /// Enable response buffering.
  final pulumi.Input<bool>? enableResponseBuffering;

  /// Creates a new [ApplicationGatewayGlobalConfiguration].
  /// [enableRequestBuffering] Enable request buffering.
  /// [enableResponseBuffering] Enable response buffering.
  const ApplicationGatewayGlobalConfiguration({
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
      enableRequestBuffering: (() { final guardedValue = map['enableRequestBuffering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableResponseBuffering: (() { final guardedValue = map['enableResponseBuffering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

