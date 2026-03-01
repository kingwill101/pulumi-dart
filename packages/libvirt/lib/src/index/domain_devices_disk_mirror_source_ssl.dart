// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final String verify;

  /// Creates a new [DomainDevicesDiskMirrorSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  DomainDevicesDiskMirrorSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainDevicesDiskMirrorSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceSsl(
      verify: map['verify'] as String,
    );
  }
}

