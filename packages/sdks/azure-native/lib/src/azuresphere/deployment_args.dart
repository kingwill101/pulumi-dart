// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_azuresphere.dart';

/// {@template pulumi_azuresphere_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_deployment_args_doc}
class DeploymentArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Images deployed
  final pulumi.Input<List<ImageAzuresphere>>? deployedImages;
  /// Deployment ID
  final pulumi.Input<String>? deploymentId;
  /// Deployment name. Use .default for deployment creation and to get the current deployment for the associated device group.
  final pulumi.Input<String>? deploymentName;
  /// Name of device group.
  final pulumi.Input<String> deviceGroupName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DeploymentArgs].
  /// [catalogName] Name of catalog
  /// [deployedImages] Images deployed
  /// [deploymentId] Deployment ID
  /// [deploymentName] Deployment name. Use .default for deployment creation and to get the current deployment for the associated device group.
  /// [deviceGroupName] Name of device group.
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DeploymentArgs({
    required this.catalogName,
    this.deployedImages,
    this.deploymentId,
    this.deploymentName,
    required this.deviceGroupName,
    required this.productName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'deployedImages': ?deployedImages,
      'deploymentId': ?deploymentId,
      'deploymentName': ?deploymentName,
      'deviceGroupName': deviceGroupName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      catalogName: (map['catalogName'] as String).input(),
      deployedImages: map['deployedImages'] == null ? null : ((map['deployedImages'] as List).cast<ImageAzuresphere>()).input(),
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId'] as String).input(),
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName'] as String).input(),
      deviceGroupName: (map['deviceGroupName'] as String).input(),
      productName: (map['productName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

