// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker_rule.dart';
import 'backend_credentials.dart';
import 'backend_proxy.dart';
import 'backend_service_fabric_cluster.dart';
import 'backend_tls.dart';

/// {@template pulumi_apimanagement_backend_backend_args_doc}
/// The set of arguments for Backend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_backend_backend_args_doc}
class BackendArgs {
  /// The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// A `circuit_breaker_rule` block as documented below.
  final pulumi.Input<BackendCircuitBreakerRule>? circuitBreakerRule;
  /// A `credentials` block as documented below.
  final pulumi.Input<BackendCredentials>? credentials;
  /// The description of the backend.
  final pulumi.Input<String>? description;
  /// The name of the API Management backend. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protocol used by the backend host. Possible values are `http` or `soap`.
  final pulumi.Input<String> protocol;
  /// A `proxy` block as documented below.
  final pulumi.Input<BackendProxy>? proxy;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  final pulumi.Input<String>? resourceId;
  /// A `service_fabric_cluster` block as documented below.
  final pulumi.Input<BackendServiceFabricCluster>? serviceFabricCluster;
  /// The title of the backend.
  final pulumi.Input<String>? title;
  /// A `tls` block as documented below.
  final pulumi.Input<BackendTls>? tls;
  /// The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  final pulumi.Input<String> url;

  /// Creates a new [BackendArgs].
  /// [apiManagementName] The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created.
  /// [circuitBreakerRule] A `circuit_breaker_rule` block as documented below.
  /// [credentials] A `credentials` block as documented below.
  /// [description] The description of the backend.
  /// [name] The name of the API Management backend. Changing this forces a new resource to be created.
  /// [protocol] The protocol used by the backend host. Possible values are `http` or `soap`.
  /// [proxy] A `proxy` block as documented below.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [resourceId] The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster.
  /// [serviceFabricCluster] A `service_fabric_cluster` block as documented below.
  /// [title] The title of the backend.
  /// [tls] A `tls` block as documented below.
  /// [url] The backend host URL should be specified in the format `"https://backend.com/api"`, avoiding trailing slashes (/) to minimize misconfiguration risks. Azure API Management instance will append the backend resource name to this URL. This URL typically serves as the `base-url` in the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, enabling seamless transitions from frontend to backend.
  BackendArgs({
    required String apiManagementName,
    BackendCircuitBreakerRule? circuitBreakerRule,
    BackendCredentials? credentials,
    String? description,
    String? name,
    required String protocol,
    BackendProxy? proxy,
    required String resourceGroupName,
    String? resourceId,
    BackendServiceFabricCluster? serviceFabricCluster,
    String? title,
    BackendTls? tls,
    required String url,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      circuitBreakerRule = pulumi.Input.asOptionalInput<BackendCircuitBreakerRule>(circuitBreakerRule),
      credentials = pulumi.Input.asOptionalInput<BackendCredentials>(credentials),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asInput<String>(protocol),
      proxy = pulumi.Input.asOptionalInput<BackendProxy>(proxy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      serviceFabricCluster = pulumi.Input.asOptionalInput<BackendServiceFabricCluster>(serviceFabricCluster),
      title = pulumi.Input.asOptionalInput<String>(title),
      tls = pulumi.Input.asOptionalInput<BackendTls>(tls),
      url = pulumi.Input.asInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'circuitBreakerRule': ?pulumi.Input.mapOptionalInputValue<BackendCircuitBreakerRule, Map<String, dynamic>>(circuitBreakerRule, (value) => value.toMap()),
      'credentials': ?pulumi.Input.mapOptionalInputValue<BackendCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'protocol': protocol,
      'proxy': ?pulumi.Input.mapOptionalInputValue<BackendProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceFabricCluster': ?pulumi.Input.mapOptionalInputValue<BackendServiceFabricCluster, Map<String, dynamic>>(serviceFabricCluster, (value) => value.toMap()),
      'title': ?title,
      'tls': ?pulumi.Input.mapOptionalInputValue<BackendTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'url': url,
    };
  }

  factory BackendArgs.fromMap(Map<String, dynamic> map) {
    return BackendArgs(
      apiManagementName: map['apiManagementName'] as String,
      circuitBreakerRule: map['circuitBreakerRule'] == null ? null : BackendCircuitBreakerRule.fromMap((map['circuitBreakerRule'] as Map).cast<String, dynamic>()),
      credentials: map['credentials'] == null ? null : BackendCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] as String,
      proxy: map['proxy'] == null ? null : BackendProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      serviceFabricCluster: map['serviceFabricCluster'] == null ? null : BackendServiceFabricCluster.fromMap((map['serviceFabricCluster'] as Map).cast<String, dynamic>()),
      title: map['title'] == null ? null : map['title'] as String,
      tls: map['tls'] == null ? null : BackendTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}

