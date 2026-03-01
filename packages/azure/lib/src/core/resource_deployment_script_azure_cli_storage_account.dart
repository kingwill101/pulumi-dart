// ignore_for_file: unused_element, unnecessary_cast


class ResourceDeploymentScriptAzureCliStorageAccount {
  /// Specifies the storage account access key.
  final String key;
  /// Specifies the storage account name.
  final String name;

  /// Creates a new [ResourceDeploymentScriptAzureCliStorageAccount].
  /// [key] Specifies the storage account access key.
  /// [name] Specifies the storage account name.
  ResourceDeploymentScriptAzureCliStorageAccount({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory ResourceDeploymentScriptAzureCliStorageAccount.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptAzureCliStorageAccount(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}

