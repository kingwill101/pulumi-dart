// ignore_for_file: unused_element, unnecessary_cast


class DeploymentLoggingStorageAccount {
  final String? containerName;
  /// The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  final String? name;

  /// Creates a new [DeploymentLoggingStorageAccount].
  /// [containerName] Optional.
  /// [name] The name which should be used for this NGINX Deployment. Changing this forces a new NGINX Deployment to be created.
  DeploymentLoggingStorageAccount({
    this.containerName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'name': ?name,
    };
  }

  factory DeploymentLoggingStorageAccount.fromMap(Map<String, dynamic> map) {
    return DeploymentLoggingStorageAccount(
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

