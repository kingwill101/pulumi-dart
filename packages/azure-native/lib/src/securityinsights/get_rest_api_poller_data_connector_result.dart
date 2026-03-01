// ignore_for_file: unused_element, unnecessary_cast

import 'awsauth_model_response.dart';
import 'ccp_response_config_response.dart';
import 'dcrconfiguration_response.dart';
import 'rest_api_poller_request_config_response.dart';
import 'rest_api_poller_request_paging_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRestApiPollerDataConnector.
class GetRestApiPollerDataConnectorResult {
  /// The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  final Map<String, String>? addOnAttributes;
  /// The a authentication model.
  final AWSAuthModelResponse auth;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connector definition name (the dataConnectorDefinition resource id).
  final String connectorDefinitionName;
  /// The Log Analytics table destination.
  final String? dataType;
  /// The DCR related properties.
  final DCRConfigurationResponse? dcrConfig;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Indicates whether the connector is active or not.
  final bool? isActive;
  /// The kind of the data connector
  /// Expected value is 'RestApiPoller'.
  final String kind;
  /// The name of the resource
  final String name;
  /// The paging configuration.
  final RestApiPollerRequestPagingConfigResponse? paging;
  /// The request configuration.
  final RestApiPollerRequestConfigResponse request;
  /// The response configuration.
  final CcpResponseConfigResponse? response;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRestApiPollerDataConnectorResult].
  /// [addOnAttributes] The add on attributes. The key name will become attribute name (a column) and the value will become the attribute value in the payload.
  /// [auth] The a authentication model.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorDefinitionName] The connector definition name (the dataConnectorDefinition resource id).
  /// [dataType] The Log Analytics table destination.
  /// [dcrConfig] The DCR related properties.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isActive] Indicates whether the connector is active or not.
  /// [kind] The kind of the data connector
  /// [name] The name of the resource
  /// [paging] The paging configuration.
  /// [request] The request configuration.
  /// [response] The response configuration.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRestApiPollerDataConnectorResult({
    this.addOnAttributes,
    required this.auth,
    required this.azureApiVersion,
    required this.connectorDefinitionName,
    this.dataType,
    this.dcrConfig,
    this.etag,
    required this.id,
    this.isActive,
    required this.kind,
    required this.name,
    this.paging,
    required this.request,
    this.response,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnAttributes': ?addOnAttributes,
      'auth': auth.toMap(),
      'azureApiVersion': azureApiVersion,
      'connectorDefinitionName': connectorDefinitionName,
      'dataType': ?dataType,
      'dcrConfig': ?dcrConfig == null ? null : dcrConfig!.toMap(),
      'etag': ?etag,
      'id': id,
      'isActive': ?isActive,
      'kind': kind,
      'name': name,
      'paging': ?paging == null ? null : paging!.toMap(),
      'request': request.toMap(),
      'response': ?response == null ? null : response!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRestApiPollerDataConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetRestApiPollerDataConnectorResult(
      addOnAttributes: map['addOnAttributes'] == null ? null : (map['addOnAttributes'] as Map).cast<String, String>(),
      auth: AWSAuthModelResponse.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      connectorDefinitionName: map['connectorDefinitionName'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      dcrConfig: map['dcrConfig'] == null ? null : DCRConfigurationResponse.fromMap((map['dcrConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      isActive: map['isActive'] == null ? null : map['isActive'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      paging: map['paging'] == null ? null : RestApiPollerRequestPagingConfigResponse.fromMap((map['paging'] as Map).cast<String, dynamic>()),
      request: RestApiPollerRequestConfigResponse.fromMap((map['request'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : CcpResponseConfigResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

