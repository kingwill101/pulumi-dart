// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_rdp_listener.dart';

class DomainDevicesGraphicRdp {
  /// Enables automatic port assignment for the RDP connection.
  final bool? autoPort;
  /// Configures the listening parameters for the RDP graphics connection.
  final String? listen;
  /// Sets the configuration for RDP listeners that accept incoming connections.
  final List<DomainDevicesGraphicRdpListener>? listeners;
  /// Configures whether multi-user access is allowed on the RDP connection.
  final String? multiUser;
  /// Sets the password required for RDP access to the graphics console.
  final String? passwd;
  /// Configures the port for the RDP connection to the virtual machine's graphics.
  final double? port;
  /// Determines if the default RDP user should be replaced with a specified one.
  final String? replaceUser;
  /// Sets the username for RDP authentication on the graphics connection.
  final String? username;

  /// Creates a new [DomainDevicesGraphicRdp].
  /// [autoPort] Enables automatic port assignment for the RDP connection.
  /// [listen] Configures the listening parameters for the RDP graphics connection.
  /// [listeners] Sets the configuration for RDP listeners that accept incoming connections.
  /// [multiUser] Configures whether multi-user access is allowed on the RDP connection.
  /// [passwd] Sets the password required for RDP access to the graphics console.
  /// [port] Configures the port for the RDP connection to the virtual machine's graphics.
  /// [replaceUser] Determines if the default RDP user should be replaced with a specified one.
  /// [username] Sets the username for RDP authentication on the graphics connection.
  DomainDevicesGraphicRdp({
    this.autoPort,
    this.listen,
    this.listeners,
    this.multiUser,
    this.passwd,
    this.port,
    this.replaceUser,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPort': ?autoPort,
      'listen': ?listen,
      'listeners': ?listeners == null ? null : pulumi.Input.encodeList<DomainDevicesGraphicRdpListener, Map<String, dynamic>>(listeners!, (value) => value.toMap()),
      'multiUser': ?multiUser,
      'passwd': ?passwd,
      'port': ?port,
      'replaceUser': ?replaceUser,
      'username': ?username,
    };
  }

  factory DomainDevicesGraphicRdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdp(
      autoPort: map['autoPort'] == null ? null : map['autoPort'] as bool,
      listen: map['listen'] == null ? null : map['listen'] as String,
      listeners: map['listeners'] == null ? null : pulumi.Input.decodeList<DomainDevicesGraphicRdpListener>(map['listeners'], (value) => DomainDevicesGraphicRdpListener.fromMap((value as Map).cast<String, dynamic>())),
      multiUser: map['multiUser'] == null ? null : map['multiUser'] as String,
      passwd: map['passwd'] == null ? null : map['passwd'] as String,
      port: map['port'] == null ? null : map['port'] as double,
      replaceUser: map['replaceUser'] == null ? null : map['replaceUser'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

