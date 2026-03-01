// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_resource_properties.dart';
import 'sku.dart';

/// {@template pulumi_appplatform_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_deployment_args_doc}
class DeploymentArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the Deployment resource.
  final pulumi.Input<String>? deploymentName;
  /// Properties of the Deployment resource
  final pulumi.Input<DeploymentResourceProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Sku of the Deployment resource
  final pulumi.Input<Sku>? sku;

  /// Creates a new [DeploymentArgs].
  /// [appName] The name of the App resource.
  /// [deploymentName] The name of the Deployment resource.
  /// [properties] Properties of the Deployment resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the Deployment resource
  DeploymentArgs({
    required String appName,
    String? deploymentName,
    DeploymentResourceProperties? properties,
    required String resourceGroupName,
    required String serviceName,
    Sku? sku,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      properties = pulumi.Input.asOptionalInput<DeploymentResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'deploymentName': ?deploymentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DeploymentResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      appName: map['appName'] as String,
      deploymentName: map['deploymentName'] == null ? null : map['deploymentName'] as String,
      properties: map['properties'] == null ? null : DeploymentResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

