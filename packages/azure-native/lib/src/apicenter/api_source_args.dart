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
    String? apiSourceName,
    AzureApiManagementSource? azureApiManagementSource,
    String? importSpecification,
    required String resourceGroupName,
    required String serviceName,
    String? targetEnvironmentId,
    String? targetLifecycleStage,
    required String workspaceName,
  }) :
      apiSourceName = pulumi.Input.asOptionalInput<String>(apiSourceName),
      azureApiManagementSource = pulumi.Input.asOptionalInput<AzureApiManagementSource>(azureApiManagementSource),
      importSpecification = pulumi.Input.asOptionalInput<String>(importSpecification),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      targetEnvironmentId = pulumi.Input.asOptionalInput<String>(targetEnvironmentId),
      targetLifecycleStage = pulumi.Input.asOptionalInput<String>(targetLifecycleStage),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      apiSourceName: map['apiSourceName'] == null ? null : map['apiSourceName'] as String,
      azureApiManagementSource: map['azureApiManagementSource'] == null ? null : AzureApiManagementSource.fromMap((map['azureApiManagementSource'] as Map).cast<String, dynamic>()),
      importSpecification: map['importSpecification'] == null ? null : map['importSpecification'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      targetEnvironmentId: map['targetEnvironmentId'] == null ? null : map['targetEnvironmentId'] as String,
      targetLifecycleStage: map['targetLifecycleStage'] == null ? null : map['targetLifecycleStage'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

