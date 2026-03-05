/// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
enum ServiceType {
  valueEngine("Engine"),
  valueSSRS("SSRS"),
  valueSSAS("SSAS"),
  valueSSIS("SSIS"),
  valuePBIRS("PBIRS");

  const ServiceType(this.wireValue);
  final String wireValue;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}

