import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Join type.
enum DomainJoinType implements pulumi.PulumiEnum<String> {
  valueHybridAzureADJoin("HybridAzureADJoin"),
  valueAzureADJoin("AzureADJoin");

  const DomainJoinType(this.wireValue);
  @override
  final String wireValue;

  static DomainJoinType fromValue(String value) {
    for (final item in DomainJoinType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainJoinType value: $value');
  }
}
