/// HDInsight On-demand cluster resource group authentication type.
enum HDInsightOndemandClusterResourceGroupAuthenticationType {
  valueServicePrincipalKey("ServicePrincipalKey"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightOndemandClusterResourceGroupAuthenticationType(this.value);
  final String value;

  static HDInsightOndemandClusterResourceGroupAuthenticationType fromValue(String value) {
    for (final item in HDInsightOndemandClusterResourceGroupAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightOndemandClusterResourceGroupAuthenticationType value: $value');
  }
}

