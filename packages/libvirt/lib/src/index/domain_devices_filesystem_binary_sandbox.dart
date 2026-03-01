// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemBinarySandbox {
  /// Sets the mode for the sandbox environment of the binary filesystem.
  final String mode;

  /// Creates a new [DomainDevicesFilesystemBinarySandbox].
  /// [mode] Sets the mode for the sandbox environment of the binary filesystem.
  DomainDevicesFilesystemBinarySandbox({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesFilesystemBinarySandbox.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinarySandbox(
      mode: map['mode'] as String,
    );
  }
}

