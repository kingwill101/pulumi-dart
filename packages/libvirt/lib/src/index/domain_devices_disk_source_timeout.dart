// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final String seconds;

  /// Creates a new [DomainDevicesDiskSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainDevicesDiskSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceTimeout(
      seconds: map['seconds'] as String,
    );
  }
}

