import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlInstanceType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  automatic("Automatic"),
  singleInstance("SingleInstance"),
  instancePools("InstancePools");

  const AzureSqlInstanceType(this.wireValue);
  @override
  final String wireValue;

  static AzureSqlInstanceType fromValue(String value) {
    for (final item in AzureSqlInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlInstanceType value: $value');
  }
}
