// ignore_for_file: unused_element, unnecessary_cast

import 'enable_state.dart';
import 'shutdown_on_idle_mode.dart';

/// Profile for how to handle shutting down virtual machines.
class AutoShutdownProfile {
  /// The amount of time a VM will stay running after a user disconnects if this behavior is enabled.
  final String? disconnectDelay;
  /// The amount of time a VM will idle before it is shutdown if this behavior is enabled.
  final String? idleDelay;
  /// The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled.
  final String? noConnectDelay;
  /// Whether shutdown on disconnect is enabled
  final EnableState? shutdownOnDisconnect;
  /// Whether a VM will get shutdown when it has idled for a period of time.
  final ShutdownOnIdleMode? shutdownOnIdle;
  /// Whether a VM will get shutdown when it hasn't been connected to after a period of time.
  final EnableState? shutdownWhenNotConnected;

  /// Creates a new [AutoShutdownProfile].
  /// [disconnectDelay] The amount of time a VM will stay running after a user disconnects if this behavior is enabled.
  /// [idleDelay] The amount of time a VM will idle before it is shutdown if this behavior is enabled.
  /// [noConnectDelay] The amount of time a VM will stay running before it is shutdown if no connection is made and this behavior is enabled.
  /// [shutdownOnDisconnect] Whether shutdown on disconnect is enabled
  /// [shutdownOnIdle] Whether a VM will get shutdown when it has idled for a period of time.
  /// [shutdownWhenNotConnected] Whether a VM will get shutdown when it hasn't been connected to after a period of time.
  AutoShutdownProfile({
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
      'shutdownOnDisconnect': ?shutdownOnDisconnect == null ? null : shutdownOnDisconnect!.value,
      'shutdownOnIdle': ?shutdownOnIdle == null ? null : shutdownOnIdle!.value,
      'shutdownWhenNotConnected': ?shutdownWhenNotConnected == null ? null : shutdownWhenNotConnected!.value,
    };
  }

  factory AutoShutdownProfile.fromMap(Map<String, dynamic> map) {
    return AutoShutdownProfile(
      disconnectDelay: map['disconnectDelay'] == null ? null : map['disconnectDelay'] as String,
      idleDelay: map['idleDelay'] == null ? null : map['idleDelay'] as String,
      noConnectDelay: map['noConnectDelay'] == null ? null : map['noConnectDelay'] as String,
      shutdownOnDisconnect: map['shutdownOnDisconnect'] == null ? null : EnableState.fromValue(map['shutdownOnDisconnect'] as String),
      shutdownOnIdle: map['shutdownOnIdle'] == null ? null : ShutdownOnIdleMode.fromValue(map['shutdownOnIdle'] as String),
      shutdownWhenNotConnected: map['shutdownWhenNotConnected'] == null ? null : EnableState.fromValue(map['shutdownWhenNotConnected'] as String),
    );
  }
}

