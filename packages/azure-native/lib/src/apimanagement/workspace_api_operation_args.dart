// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'request_contract.dart';
import 'response_contract.dart';

/// {@template pulumi_apimanagement_workspace_api_operation_args_doc}
/// The set of arguments for WorkspaceApiOperation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_operation_args_doc}
class WorkspaceApiOperationArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Description of the operation. May include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// Operation Name.
  final pulumi.Input<String> displayName;
  /// A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them.
  final pulumi.Input<String> method;
  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? operationId;
  /// Operation Policies
  final pulumi.Input<String>? policies;
  /// An entity containing request details.
  final pulumi.Input<RequestContract>? request;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Array of Operation responses.
  final pulumi.Input<List<ResponseContract>>? responses;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Collection of URL template parameters.
  final pulumi.Input<List<ParameterContract>>? templateParameters;
  /// Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date}
  final pulumi.Input<String> urlTemplate;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiOperationArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [description] Description of the operation. May include HTML formatting tags.
  /// [displayName] Operation Name.
  /// [method] A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [policies] Operation Policies
  /// [request] An entity containing request details.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [responses] Array of Operation responses.
  /// [serviceName] The name of the API Management service.
  /// [templateParameters] Collection of URL template parameters.
  /// [urlTemplate] Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date}
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiOperationArgs({
    required String apiId,
    String? description,
    required String displayName,
    required String method,
    String? operationId,
    String? policies,
    RequestContract? request,
    required String resourceGroupName,
    List<ResponseContract>? responses,
    required String serviceName,
    List<ParameterContract>? templateParameters,
    required String urlTemplate,
    required String workspaceId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      method = pulumi.Input.asInput<String>(method),
      operationId = pulumi.Input.asOptionalInput<String>(operationId),
      policies = pulumi.Input.asOptionalInput<String>(policies),
      request = pulumi.Input.asOptionalInput<RequestContract>(request),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      responses = pulumi.Input.asOptionalInput<List<ResponseContract>>(responses),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      templateParameters = pulumi.Input.asOptionalInput<List<ParameterContract>>(templateParameters),
      urlTemplate = pulumi.Input.asInput<String>(urlTemplate),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'displayName': displayName,
      'method': method,
      'operationId': ?operationId,
      'policies': ?policies,
      'request': ?pulumi.Input.mapOptionalInputValue<RequestContract, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'responses': ?pulumi.Input.mapOptionalInputValue<List<ResponseContract>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<ResponseContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': serviceName,
      'templateParameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterContract>, List<Map<String, dynamic>>>(templateParameters, (value) => pulumi.Input.encodeList<ParameterContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlTemplate': urlTemplate,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiOperationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiOperationArgs(
      apiId: map['apiId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      method: map['method'] as String,
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      policies: map['policies'] == null ? null : map['policies'] as String,
      request: map['request'] == null ? null : RequestContract.fromMap((map['request'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      responses: map['responses'] == null ? null : pulumi.Input.decodeList<ResponseContract>(map['responses'], (value) => ResponseContract.fromMap((value as Map).cast<String, dynamic>())),
      serviceName: map['serviceName'] as String,
      templateParameters: map['templateParameters'] == null ? null : pulumi.Input.decodeList<ParameterContract>(map['templateParameters'], (value) => ParameterContract.fromMap((value as Map).cast<String, dynamic>())),
      urlTemplate: map['urlTemplate'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

