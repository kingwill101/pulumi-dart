// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_api_management_source.dart';

/// {@template pulumi_apicenter_api_source_args_doc}
/// The set of arguments for ApiSource.
/// {@endtemplate}
/// {@macro pulumi_apicenter_api_source_args_doc}
class ApiSourceArgs {
  /// The name of the API.
  final pulumi.Input<String>? apiSourceName;
  /// API source configuration for Azure API Management.
  final pulumi.Input<AzureApiManagementSource>? azureApiManagementSource;
  /// Indicates if the specification should be imported along with metadata.
  final pulumi.Input<String>? importSpecification;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// The target environment resource ID.
  final pulumi.Input<String>? targetEnvironmentId;
  /// The target lifecycle stage.
  final pulumi.Input<String>? targetLifecycleStage;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ApiSourceArgs].
  /// [apiSourceName] The name of the API.
  /// [azureApiManagementSource] API source configuration for Azure API Management.
  /// [importSpecification] Indicates if the specification should be imported along with metadata.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [targetEnvironmentId] The target environment resource ID.
  /// [targetLifecycleStage] The target lifecycle stage.
  /// [workspaceName] The name of the workspace.
  ApiSourceArgs({
    this.apiSourceName,
    this.azureApiManagementSource,
    this.importSpecification,
    required this.resourceGroupName,
    required this.serviceName,
    this.targetEnvironmentId,
    this.targetLifecycleStage,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSourceName': ?apiSourceName,
      'azureApiManagementSource': ?pulumi.Input.mapOptionalInputValue<AzureApiManagementSource, Map<String, dynamic>>(azureApiManagementSource, (value) => value.toMap()),
      'importSpecification': ?importSpecification,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'targetEnvironmentId': ?targetEnvironmentId,
      'targetLifecycleStage': ?targetLifecycleStage,
      'workspaceName': workspaceName,
    };
  }

  factory ApiSourceArgs.fromMap(Map<String, dynamic> map) {
    return ApiSourceArgs(
      apiSourceName: map['apiSourceName'] == null ? null : (map['apiSourceName']! as String).input(),
      azureApiManagementSource: map['azureApiManagementSource'] == null ? null : (AzureApiManagementSource.fromMap((map['azureApiManagementSource']! as Map).cast<String, dynamic>())).input(),
      importSpecification: map['importSpecification'] == null ? null : (map['importSpecification']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      targetEnvironmentId: map['targetEnvironmentId'] == null ? null : (map['targetEnvironmentId']! as String).input(),
      targetLifecycleStage: map['targetLifecycleStage'] == null ? null : (map['targetLifecycleStage']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

