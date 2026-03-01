// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_spring_cloud_app_get_spring_cloud_app_args_doc}
/// Arguments for getSpringCloudApp.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_spring_cloud_app_get_spring_cloud_app_args_doc}
class GetSpringCloudAppArgs {
  /// The name of the Spring Cloud Application.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Spring Cloud Application exists.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Spring Cloud Service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetSpringCloudAppArgs].
  /// [name] The name of the Spring Cloud Application.
  /// [resourceGroupName] The name of the Resource Group where the Spring Cloud Application exists.
  /// [serviceName] The name of the Spring Cloud Service.
  GetSpringCloudAppArgs({
    required String name,
    required String resourceGroupName,
    required String serviceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetSpringCloudAppArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

