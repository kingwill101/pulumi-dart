/// Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
enum ZonalPlatformFaultDomainAlignMode {
  aligned("Aligned"),
  unaligned("Unaligned");

  const ZonalPlatformFaultDomainAlignMode(this.wireValue);
  final String wireValue;

  static ZonalPlatformFaultDomainAlignMode fromValue(String value) {
    for (final item in ZonalPlatformFaultDomainAlignMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ZonalPlatformFaultDomainAlignMode value: $value',
    );
  }
}
