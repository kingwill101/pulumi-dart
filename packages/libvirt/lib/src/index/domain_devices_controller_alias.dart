// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesControllerAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesControllerAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesControllerAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesControllerAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerAlias(
      name: map['name'] as String,
    );
  }
}

