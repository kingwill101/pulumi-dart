// ignore_for_file: unused_element, unnecessary_cast


class ResourceDeploymentScriptPowerShellStorageAccount {
  /// Specifies the storage account access key.
  final String key;
  /// Specifies the storage account name.
  final String name;

  /// Creates a new [ResourceDeploymentScriptPowerShellStorageAccount].
  /// [key] Specifies the storage account access key.
  /// [name] Specifies the storage account name.
  ResourceDeploymentScriptPowerShellStorageAccount({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory ResourceDeploymentScriptPowerShellStorageAccount.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellStorageAccount(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}

