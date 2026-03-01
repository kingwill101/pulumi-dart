// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardHostCert {
  /// Specifies the file path for the host certificate linked to the smartcard.
  final String file;

  /// Creates a new [DomainDevicesSmartcardHostCert].
  /// [file] Specifies the file path for the host certificate linked to the smartcard.
  DomainDevicesSmartcardHostCert({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesSmartcardHostCert.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardHostCert(
      file: map['file'] as String,
    );
  }
}

