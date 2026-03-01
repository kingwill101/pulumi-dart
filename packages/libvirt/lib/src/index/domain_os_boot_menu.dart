// ignore_for_file: unused_element, unnecessary_cast


class DomainOsBootMenu {
  /// Enables or disables the boot menu for user selection during startup.
  final String? enable;
  /// Sets the amount of time the boot menu remains visible before booting the default device.
  final String? timeout;

  /// Creates a new [DomainOsBootMenu].
  /// [enable] Enables or disables the boot menu for user selection during startup.
  /// [timeout] Sets the amount of time the boot menu remains visible before booting the default device.
  DomainOsBootMenu({
    this.enable,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'timeout': ?timeout,
    };
  }

  factory DomainOsBootMenu.fromMap(Map<String, dynamic> map) {
    return DomainOsBootMenu(
      enable: map['enable'] == null ? null : map['enable'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

