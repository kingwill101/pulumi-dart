// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_api_management_source.dart';

/// {@template pulumi_apicenter_api_source_args_doc}
/// The set of arguments for ApiSource.
/// {@endtemplate}
/// {@macro pulumi_apicenter_api_source_args_doc}
class ApiSourceArgs {
  /// The name of the API.
  final pulumi.Input<String?>? apiSourceName;
  /// API source configuration for Azure API Management.
  final pulumi.Input<AzureApiManagementSource?>? azureApiManagementSource;
  /// Indicates if the specification should be imported along with metadata.
  final pulumi.Input<dynamic>? importSpecification;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// The target environment resource ID.
  final pulumi.Input<String?>? targetEnvironmentId;
  /// The target lifecycle stage.
  final pulumi.Input<dynamic>? targetLifecycleStage;
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
    pulumi.Input<dynamic>? importSpecification,
    required this.resourceGroupName,
    required this.serviceName,
    this.targetEnvironmentId,
    this.targetLifecycleStage,
    required this.workspaceName,
  }) : importSpecification = importSpecification ?? pulumi.Input.fromValue('ondemand');

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
      apiSourceName: (() { final guardedValue = map['apiSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureApiManagementSource: (() { final guardedValue = map['azureApiManagementSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureApiManagementSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importSpecification: (() { final guardedValue = map['importSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      targetEnvironmentId: (() { final guardedValue = map['targetEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLifecycleStage: (() { final guardedValue = map['targetLifecycleStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
