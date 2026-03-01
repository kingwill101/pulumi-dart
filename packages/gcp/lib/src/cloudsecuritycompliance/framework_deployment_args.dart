// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata.dart';
import 'framework_deployment_framework.dart';
import 'framework_deployment_target_resource_config.dart';

/// {@template pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
/// The set of arguments for FrameworkDeployment.
/// {@endtemplate}
/// {@macro pulumi_cloudsecuritycompliance_framework_deployment_framework_deployment_args_doc}
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

  /// Creates a new [FrameworkDeploymentArgs].
  /// [cloudControlMetadatas] Deployment mode and parameters for each of the Cloud Controls in
  /// [description] User provided description of the Framework deployment
  /// [framework] FrameworkReference contains the reference of a framework.
  /// [frameworkDeploymentId] User provided identifier. It should be unique in scope of a parent.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [targetResourceConfig] TargetResourceConfig contains either the name of the target_resource or
  FrameworkDeploymentArgs({
    required List<FrameworkDeploymentCloudControlMetadata>
    cloudControlMetadatas,
    String? description,
    required FrameworkDeploymentFramework framework,
    required String frameworkDeploymentId,
    required String location,
    required String organization,
    required FrameworkDeploymentTargetResourceConfig targetResourceConfig,
  }) : cloudControlMetadatas =
           pulumi.Input.asInput<List<FrameworkDeploymentCloudControlMetadata>>(
             cloudControlMetadatas,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       framework = pulumi.Input.asInput<FrameworkDeploymentFramework>(
         framework,
       ),
       frameworkDeploymentId = pulumi.Input.asInput<String>(
         frameworkDeploymentId,
       ),
       location = pulumi.Input.asInput<String>(location),
       organization = pulumi.Input.asInput<String>(organization),
       targetResourceConfig =
           pulumi.Input.asInput<FrameworkDeploymentTargetResourceConfig>(
             targetResourceConfig,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlMetadatas':
          pulumi.Input.mapInputValue<
            List<FrameworkDeploymentCloudControlMetadata>,
            List<Map<String, dynamic>>
          >(
            cloudControlMetadatas,
            (value) =>
                pulumi.Input.encodeList<
                  FrameworkDeploymentCloudControlMetadata,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'framework':
          pulumi.Input.mapInputValue<
            FrameworkDeploymentFramework,
            Map<String, dynamic>
          >(framework, (value) => value.toMap()),
      'frameworkDeploymentId': frameworkDeploymentId,
      'location': location,
      'organization': organization,
      'targetResourceConfig':
          pulumi.Input.mapInputValue<
            FrameworkDeploymentTargetResourceConfig,
            Map<String, dynamic>
          >(targetResourceConfig, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentArgs(
      cloudControlMetadatas:
          pulumi.Input.decodeList<FrameworkDeploymentCloudControlMetadata>(
            map['cloudControlMetadatas'],
            (value) => FrameworkDeploymentCloudControlMetadata.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      framework: FrameworkDeploymentFramework.fromMap(
        (map['framework'] as Map).cast<String, dynamic>(),
      ),
      frameworkDeploymentId: map['frameworkDeploymentId'] as String,
      location: map['location'] as String,
      organization: map['organization'] as String,
      targetResourceConfig: FrameworkDeploymentTargetResourceConfig.fromMap(
        (map['targetResourceConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
