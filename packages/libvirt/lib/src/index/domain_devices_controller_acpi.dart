// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesControllerAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesControllerAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesControllerAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesControllerAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

