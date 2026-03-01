// ignore_for_file: unused_element, unnecessary_cast


class AzureClusterControlPlaneProxyConfig {
  /// The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
  final String resourceGroupId;
  /// The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
  final String secretId;

  /// Creates a new [AzureClusterControlPlaneProxyConfig].
  /// [resourceGroupId] The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
  /// [secretId] The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
  AzureClusterControlPlaneProxyConfig({
    required this.resourceGroupId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupId': resourceGroupId,
      'secretId': secretId,
    };
  }

  factory AzureClusterControlPlaneProxyConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneProxyConfig(
      resourceGroupId: map['resourceGroupId'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

