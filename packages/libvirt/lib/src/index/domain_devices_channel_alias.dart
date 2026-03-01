// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesChannelAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesChannelAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesChannelAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelAlias(
      name: map['name'] as String,
    );
  }
}

