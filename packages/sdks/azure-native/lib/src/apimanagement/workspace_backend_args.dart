// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_base_parameters_pool.dart';
import 'backend_circuit_breaker.dart';
import 'backend_credentials_contract.dart';
import 'backend_properties.dart';
import 'backend_proxy_contract.dart';
import 'backend_tls_properties.dart';

/// {@template pulumi_apimanagement_workspace_backend_args_doc}
/// The set of arguments for WorkspaceBackend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_backend_args_doc}
class WorkspaceBackendArgs {
  /// Identifier of the Backend entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? backendId;
  /// Backend Circuit Breaker Configuration
  final pulumi.Input<BackendCircuitBreaker>? circuitBreaker;
  /// Backend Credentials Contract Properties
  final pulumi.Input<BackendCredentialsContract>? credentials;
  /// Backend Description.
  final pulumi.Input<String>? description;
  final pulumi.Input<BackendBaseParametersPool>? pool;
  /// Backend Properties contract
  final pulumi.Input<BackendProperties>? properties;
  /// Backend communication protocol. Required when backend type is 'Single'.
  final pulumi.Input<String>? protocol;
  /// Backend gateway Contract Properties
  final pulumi.Input<BackendProxyContract>? proxy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  final pulumi.Input<String>? resourceId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Backend Title.
  final pulumi.Input<String>? title;
  /// Backend TLS Properties
  final pulumi.Input<BackendTlsProperties>? tls;
  /// Type of the backend. A backend can be either Single or Pool.
  final pulumi.Input<String>? type;
  /// Runtime Url of the Backend. Required when backend type is 'Single'.
  final pulumi.Input<String>? url;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceBackendArgs].
  /// [backendId] Identifier of the Backend entity. Must be unique in the current API Management service instance.
  /// [circuitBreaker] Backend Circuit Breaker Configuration
  /// [credentials] Backend Credentials Contract Properties
  /// [description] Backend Description.
  /// [pool] Optional.
  /// [properties] Backend Properties contract
  /// [protocol] Backend communication protocol. Required when backend type is 'Single'.
  /// [proxy] Backend gateway Contract Properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  /// [serviceName] The name of the API Management service.
  /// [title] Backend Title.
  /// [tls] Backend TLS Properties
  /// [type] Type of the backend. A backend can be either Single or Pool.
  /// [url] Runtime Url of the Backend. Required when backend type is 'Single'.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const WorkspaceBackendArgs({
    this.backendId,
    this.circuitBreaker,
    this.credentials,
    this.description,
    this.pool,
    this.properties,
    this.protocol,
    this.proxy,
    required this.resourceGroupName,
    this.resourceId,
    required this.serviceName,
    this.title,
    this.tls,
    this.type,
    this.url,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendId': ?backendId,
      'circuitBreaker': ?pulumi.Input.mapOptionalInputValue<BackendCircuitBreaker, Map<String, dynamic>>(circuitBreaker, (value) => value.toMap()),
      'credentials': ?pulumi.Input.mapOptionalInputValue<BackendCredentialsContract, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'pool': ?pulumi.Input.mapOptionalInputValue<BackendBaseParametersPool, Map<String, dynamic>>(pool, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<BackendProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protocol': ?protocol,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BackendProxyContract, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceName': serviceName,
      'title': ?title,
      'tls': ?pulumi.Input.mapOptionalInputValue<BackendTlsProperties, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'type': ?type,
      'url': ?url,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceBackendArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceBackendArgs(
      backendId: (() { final guardedValue = map['backendId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      circuitBreaker: (() { final guardedValue = map['circuitBreaker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendCredentialsContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendBaseParametersPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendProxyContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendTlsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
