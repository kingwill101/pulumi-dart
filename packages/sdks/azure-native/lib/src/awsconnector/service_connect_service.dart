// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connect_client_alias.dart';
import 'service_connect_tls_configuration.dart';
import 'timeout_configuration.dart';

/// Definition of ServiceConnectService
class ServiceConnectService {
  /// The list of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. The maximum number of client aliases that you can have in this list is 1. Each alias ('endpoint') is a fully-qualified name and port number that other Amazon ECS tasks ('clients') can use to connect to this service. Each name and port mapping must be unique within the namespace. For each ``ServiceConnectService``, you must provide at least one ``clientAlias`` with one ``port``.
  final pulumi.Input<List<ServiceConnectClientAlias>>? clientAliases;
  /// The ``discoveryName`` is the name of the new CMAP service that Amazon ECS creates for this Amazon ECS service. This must be unique within the CMAP namespace. The name can contain up to 64 characters. The name can include lowercase letters, numbers, underscores (_), and hyphens (-). The name can't start with a hyphen. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``.
  final pulumi.Input<String>? discoveryName;
  /// The port number for the Service Connect proxy to listen on. Use the value of this field to bypass the proxy for traffic on the port number specified in the named ``portMapping`` in the task definition of this application, and then use it in your VPC security groups to allow traffic into the proxy for this Amazon ECS service. In ``awsvpc`` mode and Fargate, the default value is the container port number. The container port number is in the ``portMapping`` in the task definition. In bridge mode, the default value is the ephemeral port of the Service Connect proxy.
  final pulumi.Input<int>? ingressPortOverride;
  /// The ``portName`` must match the name of one of the ``portMappings`` from all the containers in the task definition of this Amazon ECS service.
  final pulumi.Input<String>? portName;
  /// A reference to an object that represents the configured timeouts for Service Connect. An object that represents the timeout configurations for Service Connect.  If ``idleTimeout`` is set to a time that is less than ``perRequestTimeout``, the connection will close when the ``idleTimeout`` is reached and not the ``perRequestTimeout``.
  final pulumi.Input<TimeoutConfiguration>? timeout;
  /// A reference to an object that represents a Transport Layer Security (TLS) configuration. An object that represents the configuration for Service Connect TLS.
  final pulumi.Input<ServiceConnectTlsConfiguration>? tls;

  /// Creates a new [ServiceConnectService].
  /// [clientAliases] The list of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. The maximum number of client aliases that you can have in this list is 1. Each alias ('endpoint') is a fully-qualified name and port number that other Amazon ECS tasks ('clients') can use to connect to this service. Each name and port mapping must be unique within the namespace. For each ``ServiceConnectService``, you must provide at least one ``clientAlias`` with one ``port``.
  /// [discoveryName] The ``discoveryName`` is the name of the new CMAP service that Amazon ECS creates for this Amazon ECS service. This must be unique within the CMAP namespace. The name can contain up to 64 characters. The name can include lowercase letters, numbers, underscores (_), and hyphens (-). The name can't start with a hyphen. If the ``discoveryName`` isn't specified, the port mapping name from the task definition is used in ``portName.namespace``.
  /// [ingressPortOverride] The port number for the Service Connect proxy to listen on. Use the value of this field to bypass the proxy for traffic on the port number specified in the named ``portMapping`` in the task definition of this application, and then use it in your VPC security groups to allow traffic into the proxy for this Amazon ECS service. In ``awsvpc`` mode and Fargate, the default value is the container port number. The container port number is in the ``portMapping`` in the task definition. In bridge mode, the default value is the ephemeral port of the Service Connect proxy.
  /// [portName] The ``portName`` must match the name of one of the ``portMappings`` from all the containers in the task definition of this Amazon ECS service.
  /// [timeout] A reference to an object that represents the configured timeouts for Service Connect. An object that represents the timeout configurations for Service Connect.  If ``idleTimeout`` is set to a time that is less than ``perRequestTimeout``, the connection will close when the ``idleTimeout`` is reached and not the ``perRequestTimeout``.
  /// [tls] A reference to an object that represents a Transport Layer Security (TLS) configuration. An object that represents the configuration for Service Connect TLS.
  ServiceConnectService({
    this.clientAliases,
    this.discoveryName,
    this.ingressPortOverride,
    this.portName,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAliases': ?pulumi.Input.mapOptionalInputValue<List<ServiceConnectClientAlias>, List<Map<String, dynamic>>>(clientAliases, (value) => pulumi.Input.encodeList<ServiceConnectClientAlias, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryName': ?discoveryName,
      'ingressPortOverride': ?ingressPortOverride,
      'portName': ?portName,
      'timeout': ?pulumi.Input.mapOptionalInputValue<TimeoutConfiguration, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'tls': ?pulumi.Input.mapOptionalInputValue<ServiceConnectTlsConfiguration, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory ServiceConnectService.fromMap(Map<String, dynamic> map) {
    return ServiceConnectService(
      clientAliases: map['clientAliases'] == null ? null : (pulumi.Input.decodeList<ServiceConnectClientAlias>(map['clientAliases'], (value) => ServiceConnectClientAlias.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discoveryName: map['discoveryName'] == null ? null : (map['discoveryName'] as String).input(),
      ingressPortOverride: map['ingressPortOverride'] == null ? null : (map['ingressPortOverride'] as int).input(),
      portName: map['portName'] == null ? null : (map['portName'] as String).input(),
      timeout: map['timeout'] == null ? null : (TimeoutConfiguration.fromMap((map['timeout'] as Map).cast<String, dynamic>())).input(),
      tls: map['tls'] == null ? null : (ServiceConnectTlsConfiguration.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

