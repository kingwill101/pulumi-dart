/// IPAllocationMethod - The IP address allocation method. Possible values include: 'Static', 'Dynamic'
enum IpAllocationMethodEnum {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const IpAllocationMethodEnum(this.value);
  final String value;

  static IpAllocationMethodEnum fromValue(String value) {
    for (final item in IpAllocationMethodEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationMethodEnum value: $value');
  }
}

