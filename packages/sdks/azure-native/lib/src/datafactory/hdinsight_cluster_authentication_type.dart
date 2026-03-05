/// HDInsight cluster authentication type.
enum HDInsightClusterAuthenticationType {
  valueBasicAuth("BasicAuth"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightClusterAuthenticationType(this.wireValue);
  final String wireValue;

  static HDInsightClusterAuthenticationType fromValue(String value) {
    for (final item in HDInsightClusterAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightClusterAuthenticationType value: $value');
  }
}

