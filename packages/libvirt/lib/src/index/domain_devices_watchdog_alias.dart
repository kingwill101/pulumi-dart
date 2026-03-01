// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesWatchdogAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesWatchdogAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesWatchdogAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesWatchdogAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesWatchdogAlias(
      name: map['name'] as String,
    );
  }
}

