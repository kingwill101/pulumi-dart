// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesPstoreAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesPstoreAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesPstoreAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesPstoreAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPstoreAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

