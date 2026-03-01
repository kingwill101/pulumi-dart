// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesRngAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesRngAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesRngAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngAlias(
      name: map['name'] as String,
    );
  }
}

