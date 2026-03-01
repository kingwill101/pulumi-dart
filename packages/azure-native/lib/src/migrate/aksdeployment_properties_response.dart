// ignore_for_file: unused_element, unnecessary_cast


/// Class for AKSDeployment Properties.
class AKSDeploymentPropertiesResponse {
  /// Gets or sets the AKS cluster name.
  final String? aksClusterName;
  /// Gets or sets the resource group of the resource.
  final String? resourceGroup;
  /// Gets or sets the subscription id of the resource.
  final String? subscriptionId;
  /// Gets or sets the tenant id.
  final String? tenantId;

  /// Creates a new [AKSDeploymentPropertiesResponse].
  /// [aksClusterName] Gets or sets the AKS cluster name.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  /// [tenantId] Gets or sets the tenant id.
  AKSDeploymentPropertiesResponse({
    this.aksClusterName,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksClusterName': ?aksClusterName,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory AKSDeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AKSDeploymentPropertiesResponse(
      aksClusterName: map['aksClusterName'] == null ? null : map['aksClusterName'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

