// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesRedirDevAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesRedirDevAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesRedirDevAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevAlias(
      name: map['name'] as String,
    );
  }
}

