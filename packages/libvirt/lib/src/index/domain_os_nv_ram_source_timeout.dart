// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final String seconds;

  /// Creates a new [DomainOsNvRamSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainOsNvRamSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainOsNvRamSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceTimeout(
      seconds: map['seconds'] as String,
    );
  }
}

