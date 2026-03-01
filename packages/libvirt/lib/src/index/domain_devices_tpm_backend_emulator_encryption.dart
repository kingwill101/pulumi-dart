// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendEmulatorEncryption {
  /// Sets the secret used for the encryption configuration for the emulator TPM backend.
  final String secret;

  /// Creates a new [DomainDevicesTpmBackendEmulatorEncryption].
  /// [secret] Sets the secret used for the encryption configuration for the emulator TPM backend.
  DomainDevicesTpmBackendEmulatorEncryption({
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
    };
  }

  factory DomainDevicesTpmBackendEmulatorEncryption.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorEncryption(
      secret: map['secret'] as String,
    );
  }
}

