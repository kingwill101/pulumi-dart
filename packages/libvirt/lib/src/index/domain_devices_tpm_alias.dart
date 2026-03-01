// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesTpmAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesTpmAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesTpmAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmAlias(
      name: map['name'] as String,
    );
  }
}

