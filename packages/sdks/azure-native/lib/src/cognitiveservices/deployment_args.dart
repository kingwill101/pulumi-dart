// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_properties.dart';
import 'sku.dart';

/// {@template pulumi_cognitiveservices_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_deployment_args_doc}
class DeploymentArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the deployment associated with the Cognitive Services Account
  final pulumi.Input<String>? deploymentName;
  /// Properties of Cognitive Services account deployment.
  final pulumi.Input<DeploymentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [deploymentName] The name of the deployment associated with the Cognitive Services Account
  /// [properties] Properties of Cognitive Services account deployment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [tags] Resource tags.
  DeploymentArgs({
    required this.accountName,
    this.deploymentName,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'deploymentName': ?deploymentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      accountName: (map['accountName'] as String).input(),
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName'] as String).input(),
      properties: map['properties'] == null ? null : (DeploymentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

