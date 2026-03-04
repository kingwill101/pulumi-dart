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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      deploymentName: (() {
        final guardedValue = map['deploymentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
