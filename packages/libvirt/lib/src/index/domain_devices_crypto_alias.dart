// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesCryptoAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesCryptoAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesCryptoAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesCryptoAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesCryptoAlias(
      name: map['name'] as String,
    );
  }
}

