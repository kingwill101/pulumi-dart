/// AAD Join type.
enum DomainJoinType {
  valueHybridAzureADJoin("HybridAzureADJoin"),
  valueAzureADJoin("AzureADJoin");

  const DomainJoinType(this.wireValue);
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
