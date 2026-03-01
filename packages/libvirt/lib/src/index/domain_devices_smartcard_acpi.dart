// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesSmartcardAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesSmartcardAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesSmartcardAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

