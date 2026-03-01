// ignore_for_file: unused_element, unnecessary_cast


class DomainSysInfoSmbiosChassisEntry {
  /// Specifies the file associated with the firmware configuration entry.
  final String? file;
  /// Defines the name of the firmware configuration entry.
  final String name;
  /// Sets the value for the firmware configuration entry.
  final String value;

  /// Creates a new [DomainSysInfoSmbiosChassisEntry].
  /// [file] Specifies the file associated with the firmware configuration entry.
  /// [name] Defines the name of the firmware configuration entry.
  /// [value] Sets the value for the firmware configuration entry.
  DomainSysInfoSmbiosChassisEntry({
    this.file,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'name': name,
      'value': value,
    };
  }

  factory DomainSysInfoSmbiosChassisEntry.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosChassisEntry(
      file: map['file'] == null ? null : map['file'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

