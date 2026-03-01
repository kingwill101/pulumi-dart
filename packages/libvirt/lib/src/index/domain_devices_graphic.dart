// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_audio.dart';
import 'domain_devices_graphic_dbus.dart';
import 'domain_devices_graphic_desktop.dart';
import 'domain_devices_graphic_egl_headless.dart';
import 'domain_devices_graphic_rdp.dart';
import 'domain_devices_graphic_sdl.dart';
import 'domain_devices_graphic_spice.dart';
import 'domain_devices_graphic_vnc.dart';

class DomainDevicesGraphic {
  /// Configures the audio settings for the graphics device in the guest.
  final DomainDevicesGraphicAudio? audio;
  /// Specifies the D-Bus settings for inter-process communication for the graphics display.
  final DomainDevicesGraphicDbus? dbus;
  /// Configures the desktop environment settings for the graphics display.
  final DomainDevicesGraphicDesktop? desktop;
  /// Configures headless EGL graphics settings for the domain.
  final DomainDevicesGraphicEglHeadless? eglHeadless;
  /// Configures the RDP settings for remote desktop access to the graphics device.
  final DomainDevicesGraphicRdp? rdp;
  /// Configures the SDL display settings for graphics output.
  final DomainDevicesGraphicSdl? sdl;
  /// Configures the SPICE settings for graphical interaction with the guest.
  final DomainDevicesGraphicSpice? spice;
  /// Configures the VNC graphical interface settings for the virtual machine.
  final DomainDevicesGraphicVnc? vnc;

  /// Creates a new [DomainDevicesGraphic].
  /// [audio] Configures the audio settings for the graphics device in the guest.
  /// [dbus] Specifies the D-Bus settings for inter-process communication for the graphics display.
  /// [desktop] Configures the desktop environment settings for the graphics display.
  /// [eglHeadless] Configures headless EGL graphics settings for the domain.
  /// [rdp] Configures the RDP settings for remote desktop access to the graphics device.
  /// [sdl] Configures the SDL display settings for graphics output.
  /// [spice] Configures the SPICE settings for graphical interaction with the guest.
  /// [vnc] Configures the VNC graphical interface settings for the virtual machine.
  DomainDevicesGraphic({
    this.audio,
    this.dbus,
    this.desktop,
    this.eglHeadless,
    this.rdp,
    this.sdl,
    this.spice,
    this.vnc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?audio == null ? null : audio!.toMap(),
      'dbus': ?dbus == null ? null : dbus!.toMap(),
      'desktop': ?desktop == null ? null : desktop!.toMap(),
      'eglHeadless': ?eglHeadless == null ? null : eglHeadless!.toMap(),
      'rdp': ?rdp == null ? null : rdp!.toMap(),
      'sdl': ?sdl == null ? null : sdl!.toMap(),
      'spice': ?spice == null ? null : spice!.toMap(),
      'vnc': ?vnc == null ? null : vnc!.toMap(),
    };
  }

  factory DomainDevicesGraphic.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphic(
      audio: map['audio'] == null ? null : DomainDevicesGraphicAudio.fromMap((map['audio'] as Map).cast<String, dynamic>()),
      dbus: map['dbus'] == null ? null : DomainDevicesGraphicDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      desktop: map['desktop'] == null ? null : DomainDevicesGraphicDesktop.fromMap((map['desktop'] as Map).cast<String, dynamic>()),
      eglHeadless: map['eglHeadless'] == null ? null : DomainDevicesGraphicEglHeadless.fromMap((map['eglHeadless'] as Map).cast<String, dynamic>()),
      rdp: map['rdp'] == null ? null : DomainDevicesGraphicRdp.fromMap((map['rdp'] as Map).cast<String, dynamic>()),
      sdl: map['sdl'] == null ? null : DomainDevicesGraphicSdl.fromMap((map['sdl'] as Map).cast<String, dynamic>()),
      spice: map['spice'] == null ? null : DomainDevicesGraphicSpice.fromMap((map['spice'] as Map).cast<String, dynamic>()),
      vnc: map['vnc'] == null ? null : DomainDevicesGraphicVnc.fromMap((map['vnc'] as Map).cast<String, dynamic>()),
    );
  }
}

