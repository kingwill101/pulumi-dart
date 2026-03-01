// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevRom {
  /// Configures the BAR settings for the ROM attribute of the host device.
  final String? bar;
  /// Sets whether the ROM of the host device is enabled or disabled.
  final String? enabled;
  /// Specifies the path to the ROM file used by the host device for initialization.
  final String? file;

  /// Creates a new [DomainDevicesHostdevRom].
  /// [bar] Configures the BAR settings for the ROM attribute of the host device.
  /// [enabled] Sets whether the ROM of the host device is enabled or disabled.
  /// [file] Specifies the path to the ROM file used by the host device for initialization.
  DomainDevicesHostdevRom({
    this.bar,
    this.enabled,
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bar': ?bar,
      'enabled': ?enabled,
      'file': ?file,
    };
  }

  factory DomainDevicesHostdevRom.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevRom(
      bar: map['bar'] == null ? null : map['bar'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      file: map['file'] == null ? null : map['file'] as String,
    );
  }
}

