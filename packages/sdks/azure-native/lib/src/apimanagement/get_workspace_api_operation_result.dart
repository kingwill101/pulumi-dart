// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_contract_response.dart';
import 'request_contract_response.dart';
import 'response_contract_response.dart';

/// Result data returned by getWorkspaceApiOperation.
class GetWorkspaceApiOperationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the operation. May include HTML formatting tags.
  final String? description;
  /// Operation Name.
  final String displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them.
  final String method;
  /// The name of the resource
  final String name;
  /// Operation Policies
  final String? policies;
  /// An entity containing request details.
  final RequestContractResponse? request;
  /// Array of Operation responses.
  final List<ResponseContractResponse>? responses;
  /// Collection of URL template parameters.
  final List<ParameterContractResponse>? templateParameters;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date}
  final String urlTemplate;

  /// Creates a new [GetWorkspaceApiOperationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the operation. May include HTML formatting tags.
  /// [displayName] Operation Name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [method] A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them.
  /// [name] The name of the resource
  /// [policies] Operation Policies
  /// [request] An entity containing request details.
  /// [responses] Array of Operation responses.
  /// [templateParameters] Collection of URL template parameters.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [urlTemplate] Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date}
  const GetWorkspaceApiOperationResult({
    required this.azureApiVersion,
    this.description,
    required this.displayName,
    required this.id,
    required this.method,
    required this.name,
    this.policies,
    this.request,
    this.responses,
    this.templateParameters,
    required this.type,
    required this.urlTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': displayName,
      'id': id,
      'method': method,
      'name': name,
      'policies': ?policies,
      'request': ?request?.toMap(),
      'responses': ?(() { final guardedValue = responses; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResponseContractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'templateParameters': ?(() { final guardedValue = templateParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<ParameterContractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'urlTemplate': urlTemplate,
    };
  }

  factory GetWorkspaceApiOperationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceApiOperationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      method: map['method'] as String,
      name: map['name'] as String,
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return RequestContractResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponseContractResponse>(guardedValue, (value) => ResponseContractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      templateParameters: (() { final guardedValue = map['templateParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterContractResponse>(guardedValue, (value) => ParameterContractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      urlTemplate: map['urlTemplate'] as String,
    );
  }
}

