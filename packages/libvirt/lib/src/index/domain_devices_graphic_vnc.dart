// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_vnc_listener.dart';

class DomainDevicesGraphicVnc {
  /// Enables automatic port selection for the VNC server, allowing flexibility for connections.
  final bool? autoPort;
  /// Indicates whether the VNC graphical interface is currently connected to the client.
  final String? connected;
  /// Specifies the keymap for the keyboard input within the VNC session.
  final String? keymap;
  /// Configures the listening options for the VNC server to accept connections.
  final String? listen;
  /// Defines listener settings for the VNC protocol, managing incoming connection handling.
  final List<DomainDevicesGraphicVncListener>? listeners;
  /// Configures the password required to access the VNC server of the virtual machine.
  final String? passwd;
  /// Sets the expiration timestamp for the VNC password, after which the password will no longer be valid.
  final String? passwdValidTo;
  /// Indicates the port on which the VNC server listens for incoming connections.
  final double? port;
  /// Controls the power management behavior for the VNC session, allowing it to manage guest power states.
  final String? powerControl;
  /// Sets the share policy for the VNC server, determining how multiple connections are handled.
  final String? sharePolicy;
  /// Configures the path of the Unix socket for VNC connections, allowing for secured access.
  final String? socket;
  /// Enables websocket connections to the VNC server, allowing for browser-based access.
  final double? webSocket;

  /// Creates a new [DomainDevicesGraphicVnc].
  /// [autoPort] Enables automatic port selection for the VNC server, allowing flexibility for connections.
  /// [connected] Indicates whether the VNC graphical interface is currently connected to the client.
  /// [keymap] Specifies the keymap for the keyboard input within the VNC session.
  /// [listen] Configures the listening options for the VNC server to accept connections.
  /// [listeners] Defines listener settings for the VNC protocol, managing incoming connection handling.
  /// [passwd] Configures the password required to access the VNC server of the virtual machine.
  /// [passwdValidTo] Sets the expiration timestamp for the VNC password, after which the password will no longer be valid.
  /// [port] Indicates the port on which the VNC server listens for incoming connections.
  /// [powerControl] Controls the power management behavior for the VNC session, allowing it to manage guest power states.
  /// [sharePolicy] Sets the share policy for the VNC server, determining how multiple connections are handled.
  /// [socket] Configures the path of the Unix socket for VNC connections, allowing for secured access.
  /// [webSocket] Enables websocket connections to the VNC server, allowing for browser-based access.
  DomainDevicesGraphicVnc({
    this.autoPort,
    this.connected,
    this.keymap,
    this.listen,
    this.listeners,
    this.passwd,
    this.passwdValidTo,
    this.port,
    this.powerControl,
    this.sharePolicy,
    this.socket,
    this.webSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPort': ?autoPort,
      'connected': ?connected,
      'keymap': ?keymap,
      'listen': ?listen,
      'listeners': ?listeners == null ? null : pulumi.Input.encodeList<DomainDevicesGraphicVncListener, Map<String, dynamic>>(listeners!, (value) => value.toMap()),
      'passwd': ?passwd,
      'passwdValidTo': ?passwdValidTo,
      'port': ?port,
      'powerControl': ?powerControl,
      'sharePolicy': ?sharePolicy,
      'socket': ?socket,
      'webSocket': ?webSocket,
    };
  }

  factory DomainDevicesGraphicVnc.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicVnc(
      autoPort: map['autoPort'] == null ? null : map['autoPort'] as bool,
      connected: map['connected'] == null ? null : map['connected'] as String,
      keymap: map['keymap'] == null ? null : map['keymap'] as String,
      listen: map['listen'] == null ? null : map['listen'] as String,
      listeners: map['listeners'] == null ? null : pulumi.Input.decodeList<DomainDevicesGraphicVncListener>(map['listeners'], (value) => DomainDevicesGraphicVncListener.fromMap((value as Map).cast<String, dynamic>())),
      passwd: map['passwd'] == null ? null : map['passwd'] as String,
      passwdValidTo: map['passwdValidTo'] == null ? null : map['passwdValidTo'] as String,
      port: map['port'] == null ? null : map['port'] as double,
      powerControl: map['powerControl'] == null ? null : map['powerControl'] as String,
      sharePolicy: map['sharePolicy'] == null ? null : map['sharePolicy'] as String,
      socket: map['socket'] == null ? null : map['socket'] as String,
      webSocket: map['webSocket'] == null ? null : map['webSocket'] as double,
    );
  }
}

