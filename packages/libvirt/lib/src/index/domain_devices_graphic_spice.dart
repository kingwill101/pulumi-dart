// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_spice_channel.dart';
import 'domain_devices_graphic_spice_clip_board.dart';
import 'domain_devices_graphic_spice_file_transfer.dart';
import 'domain_devices_graphic_spice_gl.dart';
import 'domain_devices_graphic_spice_image.dart';
import 'domain_devices_graphic_spice_jpeg.dart';
import 'domain_devices_graphic_spice_listener.dart';
import 'domain_devices_graphic_spice_mouse.dart';
import 'domain_devices_graphic_spice_playback.dart';
import 'domain_devices_graphic_spice_streaming.dart';
import 'domain_devices_graphic_spice_zlib.dart';

class DomainDevicesGraphicSpice {
  /// Enables automatic port assignment for SPICE connections.
  final bool? autoPort;
  /// Configures the SPICE channels used for the graphics connection.
  final List<DomainDevicesGraphicSpiceChannel>? channels;
  /// Enables or disables clipboard sharing between the guest and host through the Spice protocol.
  final DomainDevicesGraphicSpiceClipBoard? clipBoard;
  /// Indicates whether the Spice graphical interface is currently connected to the client.
  final String? connected;
  /// Sets the default graphical mode for the Spice display, defining initial display settings.
  final String? defaultMode;
  /// Configures file transfer capabilities over the Spice connection.
  final DomainDevicesGraphicSpiceFileTransfer? fileTransfer;
  /// Configures settings for OpenGL rendering within the Spice graphical interface.
  final DomainDevicesGraphicSpiceGl? gl;
  /// Configures graphical image settings for the Spice connection.
  final DomainDevicesGraphicSpiceImage? image;
  /// Configures JPEG image settings for the Spice graphical output.
  final DomainDevicesGraphicSpiceJpeg? jpeg;
  /// Specifies the keymap used for the keyboard input in the Spice session.
  final String? keymap;
  /// Configures the listening criteria for the Spice server, determining how it accepts connections.
  final String? listen;
  /// Defines listeners for the Spice channel, which are used for handling incoming connections.
  final List<DomainDevicesGraphicSpiceListener>? listeners;
  /// Configures mouse settings for the Spice graphical interface, managing input behavior.
  final DomainDevicesGraphicSpiceMouse? mouse;
  /// Specifies a password required for authentication when connecting to the Spice server.
  final String? passwd;
  /// Defines the expiration time for the Spice password, indicating when it becomes invalid.
  final String? passwdValidTo;
  /// Configures playback settings for multimedia content within the Spice graphical session.
  final DomainDevicesGraphicSpicePlayback? playback;
  /// Specifies the port number used by the Spice server for connections.
  final double? port;
  /// Configures streaming options for live content delivery through the Spice connection.
  final DomainDevicesGraphicSpiceStreaming? streaming;
  /// Specifies the port number for TLS connections in the Spice protocol to enhance security.
  final double? tlsPort;
  /// Configures settings for zlib compression within the Spice graphical environment.
  final DomainDevicesGraphicSpiceZlib? zlib;

  /// Creates a new [DomainDevicesGraphicSpice].
  /// [autoPort] Enables automatic port assignment for SPICE connections.
  /// [channels] Configures the SPICE channels used for the graphics connection.
  /// [clipBoard] Enables or disables clipboard sharing between the guest and host through the Spice protocol.
  /// [connected] Indicates whether the Spice graphical interface is currently connected to the client.
  /// [defaultMode] Sets the default graphical mode for the Spice display, defining initial display settings.
  /// [fileTransfer] Configures file transfer capabilities over the Spice connection.
  /// [gl] Configures settings for OpenGL rendering within the Spice graphical interface.
  /// [image] Configures graphical image settings for the Spice connection.
  /// [jpeg] Configures JPEG image settings for the Spice graphical output.
  /// [keymap] Specifies the keymap used for the keyboard input in the Spice session.
  /// [listen] Configures the listening criteria for the Spice server, determining how it accepts connections.
  /// [listeners] Defines listeners for the Spice channel, which are used for handling incoming connections.
  /// [mouse] Configures mouse settings for the Spice graphical interface, managing input behavior.
  /// [passwd] Specifies a password required for authentication when connecting to the Spice server.
  /// [passwdValidTo] Defines the expiration time for the Spice password, indicating when it becomes invalid.
  /// [playback] Configures playback settings for multimedia content within the Spice graphical session.
  /// [port] Specifies the port number used by the Spice server for connections.
  /// [streaming] Configures streaming options for live content delivery through the Spice connection.
  /// [tlsPort] Specifies the port number for TLS connections in the Spice protocol to enhance security.
  /// [zlib] Configures settings for zlib compression within the Spice graphical environment.
  DomainDevicesGraphicSpice({
    this.autoPort,
    this.channels,
    this.clipBoard,
    this.connected,
    this.defaultMode,
    this.fileTransfer,
    this.gl,
    this.image,
    this.jpeg,
    this.keymap,
    this.listen,
    this.listeners,
    this.mouse,
    this.passwd,
    this.passwdValidTo,
    this.playback,
    this.port,
    this.streaming,
    this.tlsPort,
    this.zlib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPort': ?autoPort,
      'channels': ?channels == null ? null : pulumi.Input.encodeList<DomainDevicesGraphicSpiceChannel, Map<String, dynamic>>(channels!, (value) => value.toMap()),
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'connected': ?connected,
      'defaultMode': ?defaultMode,
      'fileTransfer': ?fileTransfer == null ? null : fileTransfer!.toMap(),
      'gl': ?gl == null ? null : gl!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'jpeg': ?jpeg == null ? null : jpeg!.toMap(),
      'keymap': ?keymap,
      'listen': ?listen,
      'listeners': ?listeners == null ? null : pulumi.Input.encodeList<DomainDevicesGraphicSpiceListener, Map<String, dynamic>>(listeners!, (value) => value.toMap()),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
      'passwd': ?passwd,
      'passwdValidTo': ?passwdValidTo,
      'playback': ?playback == null ? null : playback!.toMap(),
      'port': ?port,
      'streaming': ?streaming == null ? null : streaming!.toMap(),
      'tlsPort': ?tlsPort,
      'zlib': ?zlib == null ? null : zlib!.toMap(),
    };
  }

  factory DomainDevicesGraphicSpice.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpice(
      autoPort: map['autoPort'] == null ? null : map['autoPort'] as bool,
      channels: map['channels'] == null ? null : pulumi.Input.decodeList<DomainDevicesGraphicSpiceChannel>(map['channels'], (value) => DomainDevicesGraphicSpiceChannel.fromMap((value as Map).cast<String, dynamic>())),
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesGraphicSpiceClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      connected: map['connected'] == null ? null : map['connected'] as String,
      defaultMode: map['defaultMode'] == null ? null : map['defaultMode'] as String,
      fileTransfer: map['fileTransfer'] == null ? null : DomainDevicesGraphicSpiceFileTransfer.fromMap((map['fileTransfer'] as Map).cast<String, dynamic>()),
      gl: map['gl'] == null ? null : DomainDevicesGraphicSpiceGl.fromMap((map['gl'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : DomainDevicesGraphicSpiceImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      jpeg: map['jpeg'] == null ? null : DomainDevicesGraphicSpiceJpeg.fromMap((map['jpeg'] as Map).cast<String, dynamic>()),
      keymap: map['keymap'] == null ? null : map['keymap'] as String,
      listen: map['listen'] == null ? null : map['listen'] as String,
      listeners: map['listeners'] == null ? null : pulumi.Input.decodeList<DomainDevicesGraphicSpiceListener>(map['listeners'], (value) => DomainDevicesGraphicSpiceListener.fromMap((value as Map).cast<String, dynamic>())),
      mouse: map['mouse'] == null ? null : DomainDevicesGraphicSpiceMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
      passwd: map['passwd'] == null ? null : map['passwd'] as String,
      passwdValidTo: map['passwdValidTo'] == null ? null : map['passwdValidTo'] as String,
      playback: map['playback'] == null ? null : DomainDevicesGraphicSpicePlayback.fromMap((map['playback'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as double,
      streaming: map['streaming'] == null ? null : DomainDevicesGraphicSpiceStreaming.fromMap((map['streaming'] as Map).cast<String, dynamic>()),
      tlsPort: map['tlsPort'] == null ? null : map['tlsPort'] as double,
      zlib: map['zlib'] == null ? null : DomainDevicesGraphicSpiceZlib.fromMap((map['zlib'] as Map).cast<String, dynamic>()),
    );
  }
}

