import 'package:pulumi/pulumi.dart' as pulumi;

/// HDInsight On-demand cluster resource group authentication type.
enum HDInsightOndemandClusterResourceGroupAuthenticationType implements pulumi.PulumiEnum<String> {
  servicePrincipalKey("ServicePrincipalKey"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightOndemandClusterResourceGroupAuthenticationType(this.wireValue);
  @override
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
