// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_graphic_egl_headless_gl.dart';

class DomainDevicesGraphicEglHeadless {
  /// Sets OpenGL configuration options for the headless EGL graphics display.
  final DomainDevicesGraphicEglHeadlessGl? gl;

  /// Creates a new [DomainDevicesGraphicEglHeadless].
  /// [gl] Sets OpenGL configuration options for the headless EGL graphics display.
  DomainDevicesGraphicEglHeadless({
    this.gl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gl': ?gl == null ? null : gl!.toMap(),
    };
  }

  factory DomainDevicesGraphicEglHeadless.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicEglHeadless(
      gl: map['gl'] == null ? null : DomainDevicesGraphicEglHeadlessGl.fromMap((map['gl'] as Map).cast<String, dynamic>()),
    );
  }
}

