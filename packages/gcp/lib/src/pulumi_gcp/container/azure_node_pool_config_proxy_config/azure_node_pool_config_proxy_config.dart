// ignore_for_file: unused_element, unnecessary_cast

class AzureNodePoolConfigProxyConfig {
  /// The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
  final String resourceGroupId;

  /// The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
  final String secretId;

  AzureNodePoolConfigProxyConfig({
    required this.resourceGroupId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceGroupId'] = resourceGroupId;
    map['secretId'] = secretId;
    return map;
  }

  factory AzureNodePoolConfigProxyConfig.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfigProxyConfig(
      resourceGroupId: map['resourceGroupId'] as String,
      secretId: map['secretId'] as String,
    );
  }
}
