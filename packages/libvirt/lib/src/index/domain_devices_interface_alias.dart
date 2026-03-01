// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesInterfaceAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesInterfaceAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesInterfaceAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceAlias(
      name: map['name'] as String,
    );
  }
}

