// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AzureStackHCI Cluster deployment properties.
class DeploymentCluster {
  /// For Azure blob service endpoint type, select either Default or Custom domain. If you selected **Custom domain, enter the domain for the blob service in this format core.windows.net.
  final pulumi.Input<String?>? azureServiceEndpoint;
  /// Specify the Azure Storage account name for cloud witness for your Azure Stack HCI cluster.
  final pulumi.Input<String?>? cloudAccountName;
  /// The cluster name provided when preparing Active Directory.
  final pulumi.Input<String?>? name;
  /// Specify the fileshare path for the local witness for your Azure Stack HCI cluster.
  final pulumi.Input<String?>? witnessPath;
  /// Use a cloud witness if you have internet access and if you use an Azure Storage account to provide a vote on cluster quorum. A cloud witness uses Azure Blob Storage to read or write a blob file and then uses it to arbitrate in split-brain resolution. Only allowed values are 'Cloud', 'FileShare'.
  final pulumi.Input<String?>? witnessType;

  /// Creates a new [DeploymentCluster].
  /// [azureServiceEndpoint] For Azure blob service endpoint type, select either Default or Custom domain. If you selected **Custom domain, enter the domain for the blob service in this format core.windows.net.
  /// [cloudAccountName] Specify the Azure Storage account name for cloud witness for your Azure Stack HCI cluster.
  /// [name] The cluster name provided when preparing Active Directory.
  /// [witnessPath] Specify the fileshare path for the local witness for your Azure Stack HCI cluster.
  /// [witnessType] Use a cloud witness if you have internet access and if you use an Azure Storage account to provide a vote on cluster quorum. A cloud witness uses Azure Blob Storage to read or write a blob file and then uses it to arbitrate in split-brain resolution. Only allowed values are 'Cloud', 'FileShare'.
  const DeploymentCluster({
    this.azureServiceEndpoint,
    this.cloudAccountName,
    this.name,
    this.witnessPath,
    this.witnessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureServiceEndpoint': ?azureServiceEndpoint,
      'cloudAccountName': ?cloudAccountName,
      'name': ?name,
      'witnessPath': ?witnessPath,
      'witnessType': ?witnessType,
    };
  }

  factory DeploymentCluster.fromMap(Map<String, dynamic> map) {
    return DeploymentCluster(
      azureServiceEndpoint: (() { final guardedValue = map['azureServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudAccountName: (() { final guardedValue = map['cloudAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      witnessPath: (() { final guardedValue = map['witnessPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      witnessType: (() { final guardedValue = map['witnessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
