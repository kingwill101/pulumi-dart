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
  const DeploymentArgs({
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
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      deployedImages: (() { final guardedValue = map['deployedImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<ImageAzuresphere>()); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentName: (() { final guardedValue = map['deploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceGroupName: pulumi.Input.fromValue(map['deviceGroupName'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
