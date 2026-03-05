// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connect_client_alias_response.dart';
import 'service_connect_tls_configuration_response.dart';
import 'timeout_configuration_response.dart';

/// Definition of ServiceConnectService
class ServiceConnectServiceResponse {
  /// The list of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. The maximum number of client aliases that you can have in this list is 1. Each alias ('endpoint') is a fully-qualified name and port number that other Amazon ECS tasks ('clients') can use to connect to this service. Each name and port mapping must be unique within the namespace. For each ``ServiceConnectService``, you must provide at least one ``clientAlias`` with one ``port``.
  final pulumi.Input<List<ServiceConnectClientAliasResponse>>? clientAliases;
  /// The ``discoveryName`` is the name of the new CMAP service that Amazon ECS creates for this Amazon ECS service. This must be unique within the CMAP namespace. The name can contain up to 64 characters. The name can include lowercase letters, numbers, underscores (_), and hyphens (-). The name can't start with a hyphen. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``.
  final pulumi.Input<String>? discoveryName;
  /// The port number for the Service Connect proxy to listen on. Use the value of this field to bypass the proxy for traffic on the port number specified in the named ``portMapping`` in the task definition of this application, and then use it in your VPC security groups to allow traffic into the proxy for this Amazon ECS service. In ``awsvpc`` mode and Fargate, the default value is the container port number. The container port number is in the ``portMapping`` in the task definition. In bridge mode, the default value is the ephemeral port of the Service Connect proxy.
  final pulumi.Input<int>? ingressPortOverride;
  /// The ``portName`` must match the name of one of the ``portMappings`` from all the containers in the task definition of this Amazon ECS service.
  final pulumi.Input<String>? portName;
  /// A reference to an object that represents the configured timeouts for Service Connect. An object that represents the timeout configurations for Service Connect.  If ``idleTimeout`` is set to a time that is less than ``perRequestTimeout``, the connection will close when the ``idleTimeout`` is reached and not the ``perRequestTimeout``.
  final pulumi.Input<TimeoutConfigurationResponse>? timeout;
  /// A reference to an object that represents a Transport Layer Security (TLS) configuration. An object that represents the configuration for Service Connect TLS.
  final pulumi.Input<ServiceConnectTlsConfigurationResponse>? tls;

  /// Creates a new [ServiceConnectServiceResponse].
  /// [clientAliases] The list of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. The maximum number of client aliases that you can have in this list is 1. Each alias ('endpoint') is a fully-qualified name and port number that other Amazon ECS tasks ('clients') can use to connect to this service. Each name and port mapping must be unique within the namespace. For each ``ServiceConnectService``, you must provide at least one ``clientAlias`` with one ``port``.
  /// [discoveryName] The ``discoveryName`` is the name of the new CMAP service that Amazon ECS creates for this Amazon ECS service. This must be unique within the CMAP namespace. The name can contain up to 64 characters. The name can include lowercase letters, numbers, underscores (_), and hyphens (-). The name can't start with a hyphen. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``.
  /// [ingressPortOverride] The port number for the Service Connect proxy to listen on. Use the value of this field to bypass the proxy for traffic on the port number specified in the named ``portMapping`` in the task definition of this application, and then use it in your VPC security groups to allow traffic into the proxy for this Amazon ECS service. In ``awsvpc`` mode and Fargate, the default value is the container port number. The container port number is in the ``portMapping`` in the task definition. In bridge mode, the default value is the ephemeral port of the Service Connect proxy.
  /// [portName] The ``portName`` must match the name of one of the ``portMappings`` from all the containers in the task definition of this Amazon ECS service.
  /// [timeout] A reference to an object that represents the configured timeouts for Service Connect. An object that represents the timeout configurations for Service Connect.  If ``idleTimeout`` is set to a time that is less than ``perRequestTimeout``, the connection will close when the ``idleTimeout`` is reached and not the ``perRequestTimeout``.
  /// [tls] A reference to an object that represents a Transport Layer Security (TLS) configuration. An object that represents the configuration for Service Connect TLS.
  ServiceConnectServiceResponse({
    this.clientAliases,
    this.discoveryName,
    this.ingressPortOverride,
    this.portName,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAliases': ?pulumi.Input.mapOptionalInputValue<List<ServiceConnectClientAliasResponse>, List<Map<String, dynamic>>>(clientAliases, (value) => pulumi.Input.encodeList<ServiceConnectClientAliasResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryName': ?discoveryName,
      'ingressPortOverride': ?ingressPortOverride,
      'portName': ?portName,
      'timeout': ?pulumi.Input.mapOptionalInputValue<TimeoutConfigurationResponse, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'tls': ?pulumi.Input.mapOptionalInputValue<ServiceConnectTlsConfigurationResponse, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory ServiceConnectServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConnectServiceResponse(
      clientAliases: (() { final guardedValue = map['clientAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceConnectClientAliasResponse>(guardedValue, (value) => ServiceConnectClientAliasResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveryName: (() { final guardedValue = map['discoveryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressPortOverride: (() { final guardedValue = map['ingressPortOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeoutConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConnectTlsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

