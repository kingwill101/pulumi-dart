// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for AKSDeployment Properties.
class AKSDeploymentPropertiesResponse {
  /// Gets or sets the AKS cluster name.
  final pulumi.Input<String>? aksClusterName;
  /// Gets or sets the resource group of the resource.
  final pulumi.Input<String>? resourceGroup;
  /// Gets or sets the subscription id of the resource.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AKSDeploymentPropertiesResponse].
  /// [aksClusterName] Gets or sets the AKS cluster name.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  /// [tenantId] Gets or sets the tenant id.
  const AKSDeploymentPropertiesResponse({
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
      aksClusterName: (() { final guardedValue = map['aksClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
