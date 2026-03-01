// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysMDevSourceAddress {
  /// Configures the UUID for the address of the multimedia subsystem device source.
  final String? uuid;

  /// Creates a new [DomainDevicesHostdevSubsysMDevSourceAddress].
  /// [uuid] Configures the UUID for the address of the multimedia subsystem device source.
  DomainDevicesHostdevSubsysMDevSourceAddress({
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': ?uuid,
    };
  }

  factory DomainDevicesHostdevSubsysMDevSourceAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysMDevSourceAddress(
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

