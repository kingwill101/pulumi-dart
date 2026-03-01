/// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
enum ServiceType {
  valueEngine("Engine"),
  valueSSRS("SSRS"),
  valueSSAS("SSAS"),
  valueSSIS("SSIS"),
  valuePBIRS("PBIRS");

  const ServiceType(this.value);
  final String value;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}

