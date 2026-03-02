// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_deployment_args_doc}
class GetDeploymentArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Deployment name. Use .default for deployment creation and to get the current deployment for the associated device group.
  final pulumi.Input<String> deploymentName;
  /// Name of device group.
  final pulumi.Input<String> deviceGroupName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentArgs].
  /// [catalogName] Name of catalog
  /// [deploymentName] Deployment name. Use .default for deployment creation and to get the current deployment for the associated device group.
  /// [deviceGroupName] Name of device group.
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeploymentArgs({
    required this.catalogName,
    required this.deploymentName,
    required this.deviceGroupName,
    required this.productName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'deploymentName': deploymentName,
      'deviceGroupName': deviceGroupName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      catalogName: (map['catalogName'] as String).input(),
      deploymentName: (map['deploymentName'] as String).input(),
      deviceGroupName: (map['deviceGroupName'] as String).input(),
      productName: (map['productName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

