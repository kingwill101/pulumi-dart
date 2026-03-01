// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final String verify;

  /// Creates a new [DomainDevicesDiskSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  DomainDevicesDiskSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainDevicesDiskSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceSsl(
      verify: map['verify'] as String,
    );
  }
}

