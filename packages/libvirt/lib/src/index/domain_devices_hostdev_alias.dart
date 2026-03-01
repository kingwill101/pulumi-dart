// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesHostdevAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesHostdevAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesHostdevAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevAlias(
      name: map['name'] as String,
    );
  }
}

