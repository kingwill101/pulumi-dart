// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_client_alias.dart';
import 'service_service_connect_configuration_service_timeout.dart';
import 'service_service_connect_configuration_service_tls.dart';

class ServiceServiceConnectConfigurationService {
  /// List of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. For each service block where enabled is true, exactly one `client_alias` with one `port` should be specified. See below.
  final pulumi.Input<
    List<ServiceServiceConnectConfigurationServiceClientAlias>
  >?
  clientAlias;

  /// Name of the new AWS Cloud Map service that Amazon ECS creates for this Amazon ECS service.
  final pulumi.Input<String>? discoveryName;

  /// Port number for the Service Connect proxy to listen on.
  final pulumi.Input<int>? ingressPortOverride;

  /// Name of one of the `portMappings` from all the containers in the task definition of this Amazon ECS service.
  final pulumi.Input<String> portName;

  /// Configuration timeouts for Service Connect
  final pulumi.Input<ServiceServiceConnectConfigurationServiceTimeout>? timeout;

  /// Configuration for enabling Transport Layer Security (TLS)
  final pulumi.Input<ServiceServiceConnectConfigurationServiceTls>? tls;

  /// Creates a new [ServiceServiceConnectConfigurationService].
  /// [clientAlias] List of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. For each service block where enabled is true, exactly one `client_alias` with one `port` should be specified. See below.
  /// [discoveryName] Name of the new AWS Cloud Map service that Amazon ECS creates for this Amazon ECS service.
  /// [ingressPortOverride] Port number for the Service Connect proxy to listen on.
  /// [portName] Name of one of the `portMappings` from all the containers in the task definition of this Amazon ECS service.
  /// [timeout] Configuration timeouts for Service Connect
  /// [tls] Configuration for enabling Transport Layer Security (TLS)
  ServiceServiceConnectConfigurationService({
    this.clientAlias,
    this.discoveryName,
    this.ingressPortOverride,
    required this.portName,
    this.timeout,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAlias':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceServiceConnectConfigurationServiceClientAlias>,
            List<Map<String, dynamic>>
          >(
            clientAlias,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceServiceConnectConfigurationServiceClientAlias,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'discoveryName': ?discoveryName,
      'ingressPortOverride': ?ingressPortOverride,
      'portName': portName,
      'timeout':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceServiceConnectConfigurationServiceTimeout,
            Map<String, dynamic>
          >(timeout, (value) => value.toMap()),
      'tls':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceServiceConnectConfigurationServiceTls,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfigurationService.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServiceConnectConfigurationService(
      clientAlias: (() {
        final guardedValue = map['clientAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceServiceConnectConfigurationServiceClientAlias
          >(
            guardedValue,
            (value) =>
                ServiceServiceConnectConfigurationServiceClientAlias.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      discoveryName: (() {
        final guardedValue = map['discoveryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressPortOverride: (() {
        final guardedValue = map['ingressPortOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      portName: pulumi.Input.fromValue(map['portName'] as String),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceServiceConnectConfigurationServiceTimeout.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceServiceConnectConfigurationServiceTls.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
