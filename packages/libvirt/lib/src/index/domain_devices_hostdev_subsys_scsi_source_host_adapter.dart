// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysScsiSourceHostAdapter {
  /// Sets the name of the SCSI host adapter for the device source.
  final String name;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceHostAdapter].
  /// [name] Sets the name of the SCSI host adapter for the device source.
  DomainDevicesHostdevSubsysScsiSourceHostAdapter({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceHostAdapter.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceHostAdapter(
      name: map['name'] as String,
    );
  }
}

