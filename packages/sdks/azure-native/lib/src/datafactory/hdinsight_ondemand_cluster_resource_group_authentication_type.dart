/// HDInsight On-demand cluster resource group authentication type.
enum HDInsightOndemandClusterResourceGroupAuthenticationType {
  valueServicePrincipalKey("ServicePrincipalKey"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightOndemandClusterResourceGroupAuthenticationType(this.wireValue);
  final String wireValue;

  static HDInsightOndemandClusterResourceGroupAuthenticationType fromValue(String value) {
    for (final item in HDInsightOndemandClusterResourceGroupAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightOndemandClusterResourceGroupAuthenticationType value: $value');
  }
}

