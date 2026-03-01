// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisProxy {
  /// The path in the data store to be used when moving data between Self-Hosted and Azure-SSIS Integration Runtimes.
  final String? path;
  /// Name of Self Hosted Integration Runtime as a proxy.
  final String selfHostedIntegrationRuntimeName;
  /// Name of Azure Blob Storage linked service to reference the staging data store to be used when moving data between self-hosted and Azure-SSIS integration runtimes.
  final String stagingStorageLinkedServiceName;

  /// Creates a new [IntegrationRuntimeSsisProxy].
  /// [path] The path in the data store to be used when moving data between Self-Hosted and Azure-SSIS Integration Runtimes.
  /// [selfHostedIntegrationRuntimeName] Name of Self Hosted Integration Runtime as a proxy.
  /// [stagingStorageLinkedServiceName] Name of Azure Blob Storage linked service to reference the staging data store to be used when moving data between self-hosted and Azure-SSIS integration runtimes.
  IntegrationRuntimeSsisProxy({
    this.path,
    required this.selfHostedIntegrationRuntimeName,
    required this.stagingStorageLinkedServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'selfHostedIntegrationRuntimeName': selfHostedIntegrationRuntimeName,
      'stagingStorageLinkedServiceName': stagingStorageLinkedServiceName,
    };
  }

  factory IntegrationRuntimeSsisProxy.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisProxy(
      path: map['path'] == null ? null : map['path'] as String,
      selfHostedIntegrationRuntimeName: map['selfHostedIntegrationRuntimeName'] as String,
      stagingStorageLinkedServiceName: map['stagingStorageLinkedServiceName'] as String,
    );
  }
}

