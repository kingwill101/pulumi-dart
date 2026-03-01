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
  BackendArgs({
    pulumi.Output<String>? backendId,
    pulumi.Output<BackendCircuitBreaker>? circuitBreaker,
    pulumi.Output<BackendCredentialsContract>? credentials,
    pulumi.Output<String>? description,
    pulumi.Output<BackendProperties>? properties,
    required pulumi.Output<String> protocol,
    pulumi.Output<BackendProxyContract>? proxy,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? title,
    pulumi.Output<BackendTlsProperties>? tls,
    required pulumi.Output<String> url,
  }) :
      backendId = pulumi.Input.asOptionalInput<String>(backendId),
      circuitBreaker = pulumi.Input.asOptionalInput<BackendCircuitBreaker>(circuitBreaker),
      credentials = pulumi.Input.asOptionalInput<BackendCredentialsContract>(credentials),
      description = pulumi.Input.asOptionalInput<String>(description),
      properties = pulumi.Input.asOptionalInput<BackendProperties>(properties),
      protocol = pulumi.Input.asInput<String>(protocol),
      proxy = pulumi.Input.asOptionalInput<BackendProxyContract>(proxy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      title = pulumi.Input.asOptionalInput<String>(title),
      tls = pulumi.Input.asOptionalInput<BackendTlsProperties>(tls),
      url = pulumi.Input.asInput<String>(url);

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
      backendId: map['backendId'] == null ? null : pulumi.Output.create<String>(map['backendId'] as String),
      circuitBreaker: map['circuitBreaker'] == null ? null : pulumi.Output.create<BackendCircuitBreaker>(BackendCircuitBreaker.fromMap((map['circuitBreaker'] as Map).cast<String, dynamic>())),
      credentials: map['credentials'] == null ? null : pulumi.Output.create<BackendCredentialsContract>(BackendCredentialsContract.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BackendProperties>(BackendProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      proxy: map['proxy'] == null ? null : pulumi.Output.create<BackendProxyContract>(BackendProxyContract.fromMap((map['proxy'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      tls: map['tls'] == null ? null : pulumi.Output.create<BackendTlsProperties>(BackendTlsProperties.fromMap((map['tls'] as Map).cast<String, dynamic>())),
      url: pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

