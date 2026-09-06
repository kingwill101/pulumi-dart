import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
enum ServiceType implements pulumi.PulumiEnum<String> {
  valueEngine("Engine"),
  valueSSRS("SSRS"),
  valueSSAS("SSAS"),
  valueSSIS("SSIS"),
  valuePBIRS("PBIRS");

  const ServiceType(this.wireValue);
  @override
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
