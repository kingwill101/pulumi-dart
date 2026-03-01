// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesRedirDevAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesRedirDevAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesRedirDevAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

