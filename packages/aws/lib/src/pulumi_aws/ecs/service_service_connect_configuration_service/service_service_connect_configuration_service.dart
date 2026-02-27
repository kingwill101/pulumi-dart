// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_service_connect_configuration_service_client_alias/service_service_connect_configuration_service_client_alias.dart';
import '../service_service_connect_configuration_service_timeout/service_service_connect_configuration_service_timeout.dart';
import '../service_service_connect_configuration_service_tls/service_service_connect_configuration_service_tls.dart';

class ServiceServiceConnectConfigurationService {
  /// List of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. For each service block where enabled is true, exactly one `client_alias` with one `port` should be specified. See below.
  final List<ServiceServiceConnectConfigurationServiceClientAlias>? clientAlias;

  /// Name of the new AWS Cloud Map service that Amazon ECS creates for this Amazon ECS service.
  final String? discoveryName;

  /// Port number for the Service Connect proxy to listen on.
  final int? ingressPortOverride;

  /// Name of one of the `portMappings` from all the containers in the task definition of this Amazon ECS service.
  final String portName;

  /// Configuration timeouts for Service Connect
  final ServiceServiceConnectConfigurationServiceTimeout? timeout;

  /// Configuration for enabling Transport Layer Security (TLS)
  final ServiceServiceConnectConfigurationServiceTls? tls;

  ServiceServiceConnectConfigurationService({
    this.clientAlias,
    this.discoveryName,
    this.ingressPortOverride,
    required this.portName,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientAliasValue = clientAlias;
    if (clientAliasValue != null) {
      map['clientAlias'] = Input.encodeList<
          ServiceServiceConnectConfigurationServiceClientAlias,
          Map<String, dynamic>>(clientAliasValue, (value) => value.toMap());
    }
    final discoveryNameValue = discoveryName;
    if (discoveryNameValue != null) {
      map['discoveryName'] = discoveryNameValue;
    }
    final ingressPortOverrideValue = ingressPortOverride;
    if (ingressPortOverrideValue != null) {
      map['ingressPortOverride'] = ingressPortOverrideValue;
    }
    map['portName'] = portName;
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue.toMap();
    }
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue.toMap();
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationService.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationService(
      clientAlias: map['clientAlias'] == null
          ? null
          : Input.decodeList<
                  ServiceServiceConnectConfigurationServiceClientAlias>(
              map['clientAlias'],
              (value) =>
                  ServiceServiceConnectConfigurationServiceClientAlias.fromMap(
                      (value as Map).cast<String, dynamic>())),
      discoveryName:
          map['discoveryName'] == null ? null : map['discoveryName'] as String,
      ingressPortOverride: map['ingressPortOverride'] == null
          ? null
          : map['ingressPortOverride'] as int,
      portName: map['portName'] as String,
      timeout: map['timeout'] == null
          ? null
          : ServiceServiceConnectConfigurationServiceTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null
          ? null
          : ServiceServiceConnectConfigurationServiceTls.fromMap(
              (map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}
