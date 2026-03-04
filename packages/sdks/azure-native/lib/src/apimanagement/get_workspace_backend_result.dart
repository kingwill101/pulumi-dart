// ignore_for_file: unused_element, unnecessary_cast

import 'backend_base_parameters_response_pool.dart';
import 'backend_circuit_breaker_response.dart';
import 'backend_credentials_contract_response.dart';
import 'backend_properties_response.dart';
import 'backend_proxy_contract_response.dart';
import 'backend_tls_properties_response.dart';

/// Result data returned by getWorkspaceBackend.
class GetWorkspaceBackendResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Backend Circuit Breaker Configuration
  final BackendCircuitBreakerResponse? circuitBreaker;

  /// Backend Credentials Contract Properties
  final BackendCredentialsContractResponse? credentials;

  /// Backend Description.
  final String? description;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;
  final BackendBaseParametersResponsePool? pool;

  /// Backend Properties contract
  final BackendPropertiesResponse properties;

  /// Backend communication protocol. Required when backend type is 'Single'.
  final String? protocol;

  /// Backend gateway Contract Properties
  final BackendProxyContractResponse? proxy;

  /// Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  final String? resourceId;

  /// Backend Title.
  final String? title;

  /// Backend TLS Properties
  final BackendTlsPropertiesResponse? tls;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Runtime Url of the Backend. Required when backend type is 'Single'.
  final String? url;

  /// Creates a new [GetWorkspaceBackendResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuitBreaker] Backend Circuit Breaker Configuration
  /// [credentials] Backend Credentials Contract Properties
  /// [description] Backend Description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [pool] Optional.
  /// [properties] Backend Properties contract
  /// [protocol] Backend communication protocol. Required when backend type is 'Single'.
  /// [proxy] Backend gateway Contract Properties
  /// [resourceId] Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  /// [title] Backend Title.
  /// [tls] Backend TLS Properties
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [url] Runtime Url of the Backend. Required when backend type is 'Single'.
  GetWorkspaceBackendResult({
    required this.azureApiVersion,
    this.circuitBreaker,
    this.credentials,
    this.description,
    required this.id,
    required this.name,
    this.pool,
    required this.properties,
    this.protocol,
    this.proxy,
    this.resourceId,
    this.title,
    this.tls,
    required this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'circuitBreaker': ?circuitBreaker?.toMap(),
      'credentials': ?credentials?.toMap(),
      'description': ?description,
      'id': id,
      'name': name,
      'pool': ?pool?.toMap(),
      'properties': properties.toMap(),
      'protocol': ?protocol,
      'proxy': ?proxy?.toMap(),
      'resourceId': ?resourceId,
      'title': ?title,
      'tls': ?tls?.toMap(),
      'type': type,
      'url': ?url,
    };
  }

  factory GetWorkspaceBackendResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceBackendResult(
      azureApiVersion: map['azureApiVersion'] as String,
      circuitBreaker: (() {
        final guardedValue = map['circuitBreaker'];
        if (guardedValue == null) return null;
        return BackendCircuitBreakerResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return BackendCredentialsContractResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      pool: (() {
        final guardedValue = map['pool'];
        if (guardedValue == null) return null;
        return BackendBaseParametersResponsePool.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      properties: BackendPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      proxy: (() {
        final guardedValue = map['proxy'];
        if (guardedValue == null) return null;
        return BackendProxyContractResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return BackendTlsPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      type: map['type'] as String,
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
