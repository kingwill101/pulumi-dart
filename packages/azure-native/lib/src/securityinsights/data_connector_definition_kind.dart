/// The data connector kind
enum DataConnectorDefinitionKind {
  valueCustomizable("Customizable");

  const DataConnectorDefinitionKind(this.value);
  final String value;

  static DataConnectorDefinitionKind fromValue(String value) {
    for (final item in DataConnectorDefinitionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectorDefinitionKind value: $value');
  }
}

