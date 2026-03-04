// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract.dart';
import 'request_contract.dart';
import 'response_contract.dart';

/// {@template pulumi_apimanagement_api_operation_args_doc}
/// The set of arguments for ApiOperation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_operation_args_doc}
class ApiOperationArgs {
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

  /// Creates a new [ApiOperationArgs].
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
  ApiOperationArgs({
    required this.apiId,
    this.description,
    required this.displayName,
    required this.method,
    this.operationId,
    this.policies,
    this.request,
    required this.resourceGroupName,
    this.responses,
    required this.serviceName,
    this.templateParameters,
    required this.urlTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'displayName': displayName,
      'method': method,
      'operationId': ?operationId,
      'policies': ?policies,
      'request':
          ?pulumi.Input.mapOptionalInputValue<
            RequestContract,
            Map<String, dynamic>
          >(request, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'responses':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResponseContract>,
            List<Map<String, dynamic>>
          >(
            responses,
            (value) =>
                pulumi.Input.encodeList<ResponseContract, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'serviceName': serviceName,
      'templateParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterContract>,
            List<Map<String, dynamic>>
          >(
            templateParameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterContract,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'urlTemplate': urlTemplate,
    };
  }

  factory ApiOperationArgs.fromMap(Map<String, dynamic> map) {
    return ApiOperationArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      operationId: (() {
        final guardedValue = map['operationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policies: (() {
        final guardedValue = map['policies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      request: (() {
        final guardedValue = map['request'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RequestContract.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      responses: (() {
        final guardedValue = map['responses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResponseContract>(
            guardedValue,
            (value) => ResponseContract.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      templateParameters: (() {
        final guardedValue = map['templateParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ParameterContract>(
            guardedValue,
            (value) => ParameterContract.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      urlTemplate: pulumi.Input.fromValue(map['urlTemplate'] as String),
    );
  }
}
