// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for AKSDeployment Properties.
class AKSDeploymentProperties {
  /// Gets or sets the AKS cluster name.
  final pulumi.Input<String>? aksClusterName;
  /// Gets or sets the resource group of the resource.
  final pulumi.Input<String>? resourceGroup;
  /// Gets or sets the subscription id of the resource.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AKSDeploymentProperties].
  /// [aksClusterName] Gets or sets the AKS cluster name.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  /// [tenantId] Gets or sets the tenant id.
  AKSDeploymentProperties({
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

  factory AKSDeploymentProperties.fromMap(Map<String, dynamic> map) {
    return AKSDeploymentProperties(
      aksClusterName: map['aksClusterName'] == null ? null : (map['aksClusterName']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

