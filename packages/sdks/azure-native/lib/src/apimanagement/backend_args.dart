// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker.dart';
import 'backend_credentials_contract.dart';
import 'backend_properties.dart';
import 'backend_proxy_contract.dart';
import 'backend_tls_properties.dart';

/// {@template pulumi_apimanagement_backend_args_doc}
/// The set of arguments for Backend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_backend_args_doc}
class BackendArgs {
  /// Identifier of the Backend entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? backendId;
  /// Backend Circuit Breaker Configuration
  final pulumi.Input<BackendCircuitBreaker>? circuitBreaker;
  /// Backend Credentials Contract Properties
  final pulumi.Input<BackendCredentialsContract>? credentials;
  /// Backend Description.
  final pulumi.Input<String>? description;
  /// Backend Properties contract
  final pulumi.Input<BackendProperties>? properties;
  /// Backend communication protocol.
  final pulumi.Input<String> protocol;
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
  /// Runtime Url of the Backend.
  final pulumi.Input<String> url;

  /// Creates a new [BackendArgs].
  /// [backendId] Identifier of the Backend entity. Must be unique in the current API Management service instance.
  /// [circuitBreaker] Backend Circuit Breaker Configuration
  /// [credentials] Backend Credentials Contract Properties
  /// [description] Backend Description.
  /// [properties] Backend Properties contract
  /// [protocol] Backend communication protocol.
  /// [proxy] Backend gateway Contract Properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Management Uri of the Resource in External System. This URL can be the Arm Resource Id of Logic Apps, Function Apps or API Apps.
  /// [serviceName] The name of the API Management service.
  /// [title] Backend Title.
  /// [tls] Backend TLS Properties
  /// [url] Runtime Url of the Backend.
  const BackendArgs({
    this.backendId,
    this.circuitBreaker,
    this.credentials,
    this.description,
    this.properties,
    required this.protocol,
    this.proxy,
    required this.resourceGroupName,
    this.resourceId,
    required this.serviceName,
    this.title,
    this.tls,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendId': ?backendId,
      'circuitBreaker': ?pulumi.Input.mapOptionalInputValue<BackendCircuitBreaker, Map<String, dynamic>>(circuitBreaker, (value) => value.toMap()),
      'credentials': ?pulumi.Input.mapOptionalInputValue<BackendCredentialsContract, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'properties': ?pulumi.Input.mapOptionalInputValue<BackendProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protocol': protocol,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BackendProxyContract, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceName': serviceName,
      'title': ?title,
      'tls': ?pulumi.Input.mapOptionalInputValue<BackendTlsProperties, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'url': url,
    };
  }

  factory BackendArgs.fromMap(Map<String, dynamic> map) {
    return BackendArgs(
      backendId: (() { final guardedValue = map['backendId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      circuitBreaker: (() { final guardedValue = map['circuitBreaker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendCredentialsContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendProxyContract.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendTlsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

