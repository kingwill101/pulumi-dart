// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile for how to handle shutting down virtual machines.
class AutoShutdownProfileResponse {
  /// The amount of time a VM will stay running after a user disconnects if this behavior is enabled.
  final pulumi.Input<String>? disconnectDelay;
  /// The amount of time a VM will idle before it is shutdown if this behavior is enabled.
  final pulumi.Input<String>? idleDelay;
  /// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled.
  final pulumi.Input<String>? noConnectDelay;
  /// Whether shutdown on disconnect is enabled
  final pulumi.Input<String>? shutdownOnDisconnect;
  /// Whether a VM will get shutdown when it has idled for a period of time.
  final pulumi.Input<String>? shutdownOnIdle;
  /// Whether a VM will get shutdown when it hasn't been connected to after a period of time.
  final pulumi.Input<String>? shutdownWhenNotConnected;

  /// Creates a new [AutoShutdownProfileResponse].
  /// [disconnectDelay] The amount of time a VM will stay running after a user disconnects if this behavior is enabled.
  /// [idleDelay] The amount of time a VM will idle before it is shutdown if this behavior is enabled.
  /// [noConnectDelay] The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled.
  /// [shutdownOnDisconnect] Whether shutdown on disconnect is enabled
  /// [shutdownOnIdle] Whether a VM will get shutdown when it has idled for a period of time.
  /// [shutdownWhenNotConnected] Whether a VM will get shutdown when it hasn't been connected to after a period of time.
  const AutoShutdownProfileResponse({
    this.disconnectDelay,
    this.idleDelay,
    this.noConnectDelay,
    this.shutdownOnDisconnect,
    this.shutdownOnIdle,
    this.shutdownWhenNotConnected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disconnectDelay': ?disconnectDelay,
      'idleDelay': ?idleDelay,
      'noConnectDelay': ?noConnectDelay,
      'shutdownOnDisconnect': ?shutdownOnDisconnect,
      'shutdownOnIdle': ?shutdownOnIdle,
      'shutdownWhenNotConnected': ?shutdownWhenNotConnected,
    };
  }

  factory AutoShutdownProfileResponse.fromMap(Map<String, dynamic> map) {
    return AutoShutdownProfileResponse(
      disconnectDelay: (() { final guardedValue = map['disconnectDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleDelay: (() { final guardedValue = map['idleDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noConnectDelay: (() { final guardedValue = map['noConnectDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shutdownOnDisconnect: (() { final guardedValue = map['shutdownOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shutdownOnIdle: (() { final guardedValue = map['shutdownOnIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shutdownWhenNotConnected: (() { final guardedValue = map['shutdownWhenNotConnected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
