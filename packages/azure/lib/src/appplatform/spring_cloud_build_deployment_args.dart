// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_deployment_quota.dart';

/// {@template pulumi_appplatform_spring_cloud_build_deployment_spring_cloud_build_deployment_args_doc}
/// The set of arguments for SpringCloudBuildDeployment.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_build_deployment_spring_cloud_build_deployment_args_doc}
class SpringCloudBuildDeploymentArgs {
  /// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
  final pulumi.Input<String>? addonJson;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  final pulumi.Input<List<String>>? applicationPerformanceMonitoringIds;
  /// The ID of the Spring Cloud Build Result.
  final pulumi.Input<String> buildResultId;
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created.
  final pulumi.Input<String>? name;
  /// A `quota` block as defined below.
  final pulumi.Input<SpringCloudBuildDeploymentQuota>? quota;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudBuildDeploymentArgs].
  /// [addonJson] A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
  /// [applicationPerformanceMonitoringIds] Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  /// [buildResultId] The ID of the Spring Cloud Build Result.
  /// [environmentVariables] Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  /// [instanceCount] Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [name] The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created.
  /// [quota] A `quota` block as defined below.
  /// [springCloudAppId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
  SpringCloudBuildDeploymentArgs({
    String? addonJson,
    List<String>? applicationPerformanceMonitoringIds,
    required String buildResultId,
    Map<String, String>? environmentVariables,
    int? instanceCount,
    String? name,
    SpringCloudBuildDeploymentQuota? quota,
    required String springCloudAppId,
  }) :
      addonJson = pulumi.Input.asOptionalInput<String>(addonJson),
      applicationPerformanceMonitoringIds = pulumi.Input.asOptionalInput<List<String>>(applicationPerformanceMonitoringIds),
      buildResultId = pulumi.Input.asInput<String>(buildResultId),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      quota = pulumi.Input.asOptionalInput<SpringCloudBuildDeploymentQuota>(quota),
      springCloudAppId = pulumi.Input.asInput<String>(springCloudAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonJson': ?addonJson,
      'applicationPerformanceMonitoringIds': ?applicationPerformanceMonitoringIds,
      'buildResultId': buildResultId,
      'environmentVariables': ?environmentVariables,
      'instanceCount': ?instanceCount,
      'name': ?name,
      'quota': ?pulumi.Input.mapOptionalInputValue<SpringCloudBuildDeploymentQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudBuildDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuildDeploymentArgs(
      addonJson: map['addonJson'] == null ? null : map['addonJson'] as String,
      applicationPerformanceMonitoringIds: map['applicationPerformanceMonitoringIds'] == null ? null : (map['applicationPerformanceMonitoringIds'] as List).cast<String>(),
      buildResultId: map['buildResultId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      quota: map['quota'] == null ? null : SpringCloudBuildDeploymentQuota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      springCloudAppId: map['springCloudAppId'] as String,
    );
  }
}

