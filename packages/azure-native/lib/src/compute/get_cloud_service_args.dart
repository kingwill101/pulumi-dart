// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_cloud_service_args_doc}
/// Arguments for getCloudService.
/// {@endtemplate}
/// {@macro pulumi_compute_get_cloud_service_args_doc}
class GetCloudServiceArgs {
  /// Name of the cloud service.
  final pulumi.Input<String> cloudServiceName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudServiceArgs].
  /// [cloudServiceName] Name of the cloud service.
  /// [resourceGroupName] Name of the resource group.
  GetCloudServiceArgs({
    required String cloudServiceName,
    required String resourceGroupName,
  }) :
      cloudServiceName = pulumi.Input.asInput<String>(cloudServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudServiceName': cloudServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudServiceArgs(
      cloudServiceName: map['cloudServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

