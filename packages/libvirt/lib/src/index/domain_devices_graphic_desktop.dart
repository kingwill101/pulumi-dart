// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicDesktop {
  /// Sets the display option for the desktop graphics configuration.
  final String? display;
  /// Configures the fullscreen setting for the desktop graphics display.
  final String? fullScreen;

  /// Creates a new [DomainDevicesGraphicDesktop].
  /// [display] Sets the display option for the desktop graphics configuration.
  /// [fullScreen] Configures the fullscreen setting for the desktop graphics display.
  DomainDevicesGraphicDesktop({
    this.display,
    this.fullScreen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'display': ?display,
      'fullScreen': ?fullScreen,
    };
  }

  factory DomainDevicesGraphicDesktop.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicDesktop(
      display: map['display'] == null ? null : map['display'] as String,
      fullScreen: map['fullScreen'] == null ? null : map['fullScreen'] as String,
    );
  }
}

