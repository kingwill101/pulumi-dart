// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesSmartcardAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesSmartcardAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesSmartcardAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardAlias(
      name: map['name'] as String,
    );
  }
}

