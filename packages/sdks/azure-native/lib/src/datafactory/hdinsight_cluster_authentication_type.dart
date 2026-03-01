/// HDInsight cluster authentication type.
enum HDInsightClusterAuthenticationType {
  valueBasicAuth("BasicAuth"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightClusterAuthenticationType(this.value);
  final String value;

  static HDInsightClusterAuthenticationType fromValue(String value) {
    for (final item in HDInsightClusterAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightClusterAuthenticationType value: $value');
  }
}

