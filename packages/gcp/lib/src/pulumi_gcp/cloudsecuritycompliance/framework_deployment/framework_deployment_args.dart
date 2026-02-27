// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_deployment_cloud_control_metadata/framework_deployment_cloud_control_metadata.dart';
import '../framework_deployment_framework/framework_deployment_framework.dart';
import '../framework_deployment_target_resource_config/framework_deployment_target_resource_config.dart';

/// The set of arguments for FrameworkDeployment.
class FrameworkDeploymentArgs {
  /// Deployment mode and parameters for each of the Cloud Controls in
  /// the framework. Every Cloud Control in the framework must have a
  /// CloudControlMetadata.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkDeploymentCloudControlMetadata>>
      cloudControlMetadatas;

  /// User provided description of the Framework deployment
  final pulumi.Input<String>? description;

  /// FrameworkReference contains the reference of a framework.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentFramework> framework;

  /// User provided identifier. It should be unique in scope of a parent.
  /// This is optional and if not provided, a random UUID will be generated.
  final pulumi.Input<String> frameworkDeploymentId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> organization;

  /// TargetResourceConfig contains either the name of the target_resource or
  /// contains the config to create a new target_resource.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfig>
      targetResourceConfig;

  FrameworkDeploymentArgs({
    required this.cloudControlMetadatas,
    this.description,
    required this.framework,
    required this.frameworkDeploymentId,
    required this.location,
    required this.organization,
    required this.targetResourceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudControlMetadatas'] = pulumi.Input.mapInputValue<
            List<FrameworkDeploymentCloudControlMetadata>,
            List<Map<String, dynamic>>>(
        cloudControlMetadatas,
        (value) => pulumi.Input.encodeList<
            FrameworkDeploymentCloudControlMetadata,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['framework'] = pulumi.Input.mapInputValue<FrameworkDeploymentFramework,
        Map<String, dynamic>>(framework, (value) => value.toMap());
    map['frameworkDeploymentId'] = frameworkDeploymentId;
    map['location'] = location;
    map['organization'] = organization;
    map['targetResourceConfig'] = pulumi.Input.mapInputValue<
        FrameworkDeploymentTargetResourceConfig,
        Map<String, dynamic>>(targetResourceConfig, (value) => value.toMap());
    return map;
  }

  factory FrameworkDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentArgs(
      cloudControlMetadatas:
          pulumi.Input.asInput<List<FrameworkDeploymentCloudControlMetadata>>(
              map['cloudControlMetadatas']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      framework:
          pulumi.Input.asInput<FrameworkDeploymentFramework>(map['framework']),
      frameworkDeploymentId:
          pulumi.Input.asInput<String>(map['frameworkDeploymentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      targetResourceConfig:
          pulumi.Input.asInput<FrameworkDeploymentTargetResourceConfig>(
              map['targetResourceConfig']),
    );
  }
}
