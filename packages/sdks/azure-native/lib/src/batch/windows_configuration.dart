// ignore_for_file: unused_element, unnecessary_cast


/// Windows operating system settings to apply to the virtual machine.
class WindowsConfiguration {
  /// If omitted, the default value is true.
  final bool? enableAutomaticUpdates;

  /// Creates a new [WindowsConfiguration].
  /// [enableAutomaticUpdates] If omitted, the default value is true.
  WindowsConfiguration({
    this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
    };
  }

  factory WindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsConfiguration(
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : map['enableAutomaticUpdates'] as bool,
    );
  }
}

