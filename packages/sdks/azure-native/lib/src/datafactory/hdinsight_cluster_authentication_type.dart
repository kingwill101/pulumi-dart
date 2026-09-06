import 'package:pulumi/pulumi.dart' as pulumi;

/// HDInsight cluster authentication type.
enum HDInsightClusterAuthenticationType implements pulumi.PulumiEnum<String> {
  basicAuth("BasicAuth"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const HDInsightClusterAuthenticationType(this.wireValue);
  @override
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
