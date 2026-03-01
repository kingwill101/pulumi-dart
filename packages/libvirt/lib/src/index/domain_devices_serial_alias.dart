// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesSerialAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesSerialAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesSerialAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialAlias(
      name: map['name'] as String,
    );
  }
}

