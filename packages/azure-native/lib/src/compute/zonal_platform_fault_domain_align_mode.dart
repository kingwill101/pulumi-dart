/// Specifies the align mode between Virtual Machine Scale Set compute and storage Fault Domain count.
enum ZonalPlatformFaultDomainAlignMode {
  aligned("Aligned"),
  unaligned("Unaligned");

  const ZonalPlatformFaultDomainAlignMode(this.value);
  final String value;

  static ZonalPlatformFaultDomainAlignMode fromValue(String value) {
    for (final item in ZonalPlatformFaultDomainAlignMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonalPlatformFaultDomainAlignMode value: $value');
  }
}

