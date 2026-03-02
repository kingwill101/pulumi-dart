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
      enableRequestBuffering: map['enableRequestBuffering'] == null ? null : (map['enableRequestBuffering']! as bool).input(),
      enableResponseBuffering: map['enableResponseBuffering'] == null ? null : (map['enableResponseBuffering']! as bool).input(),
    );
  }
}

