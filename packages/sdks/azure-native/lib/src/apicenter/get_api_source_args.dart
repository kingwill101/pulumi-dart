// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_get_api_source_args_doc}
/// Arguments for getApiSource.
/// {@endtemplate}
/// {@macro pulumi_apicenter_get_api_source_args_doc}
class GetApiSourceArgs {
  /// The name of the API.
  final pulumi.Input<String> apiSourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetApiSourceArgs].
  /// [apiSourceName] The name of the API.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [workspaceName] The name of the workspace.
  GetApiSourceArgs({
    required this.apiSourceName,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSourceName': apiSourceName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceName': workspaceName,
    };
  }

  factory GetApiSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetApiSourceArgs(
      apiSourceName: pulumi.Input.fromValue(map['apiSourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
