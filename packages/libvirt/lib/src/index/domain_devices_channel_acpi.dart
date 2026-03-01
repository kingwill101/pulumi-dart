// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelAcpi {
  /// Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  final double? index;

  /// Creates a new [DomainDevicesChannelAcpi].
  /// [index] Sets the index for the ACPI device associated with pstore, which is used for handling multiple ACPI elements.
  DomainDevicesChannelAcpi({
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': ?index,
    };
  }

  factory DomainDevicesChannelAcpi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelAcpi(
      index: map['index'] == null ? null : map['index'] as double,
    );
  }
}

