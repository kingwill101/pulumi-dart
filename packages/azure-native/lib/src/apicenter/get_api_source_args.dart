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
    required String apiSourceName,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceName,
  }) :
      apiSourceName = pulumi.Input.asInput<String>(apiSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      apiSourceName: map['apiSourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

