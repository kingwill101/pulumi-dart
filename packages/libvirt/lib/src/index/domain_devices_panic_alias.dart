// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesPanicAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesPanicAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesPanicAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesPanicAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPanicAlias(
      name: map['name'] as String,
    );
  }
}

