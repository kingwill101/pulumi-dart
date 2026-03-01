/// AAD Join type.
enum DomainJoinType {
  valueHybridAzureADJoin("HybridAzureADJoin"),
  valueAzureADJoin("AzureADJoin");

  const DomainJoinType(this.value);
  final String value;

  static DomainJoinType fromValue(String value) {
    for (final item in DomainJoinType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainJoinType value: $value');
  }
}

