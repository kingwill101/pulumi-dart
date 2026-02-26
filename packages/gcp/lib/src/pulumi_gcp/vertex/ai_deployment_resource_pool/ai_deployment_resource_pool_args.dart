// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_deployment_resource_pool_dedicated_resources/ai_deployment_resource_pool_dedicated_resources.dart';

/// The set of arguments for AiDeploymentResourcePool.
class AiDeploymentResourcePoolArgs {
  /// The underlying dedicated resources that the deployment resource pool uses.
  /// Structure is documented below.
  final Input<AiDeploymentResourcePoolDedicatedResources>? dedicatedResources;

  /// The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of deployment resource pool. eg us-central1
  final Input<String>? region;

  AiDeploymentResourcePoolArgs({
    this.dedicatedResources,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedicatedResourcesValue = dedicatedResources;
    if (dedicatedResourcesValue != null) {
      map['dedicatedResources'] = Input.mapOptionalInputValue<
              AiDeploymentResourcePoolDedicatedResources, Map<String, dynamic>>(
          dedicatedResourcesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiDeploymentResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return AiDeploymentResourcePoolArgs(
      dedicatedResources:
          Input.asOptionalInput<AiDeploymentResourcePoolDedicatedResources>(
              map['dedicatedResources']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
