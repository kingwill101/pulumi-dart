// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property.dart';
import 'tls_cert_method.dart';

/// {@template pulumi_iotoperationsmq_broker_listener_args_doc}
/// The set of arguments for BrokerListener.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_broker_listener_args_doc}
class BrokerListenerArgs {
  /// The flag for enabling Authentication rules on Listener Port.
  final pulumi.Input<bool>? authenticationEnabled;
  /// The flag for enabling Authorization policies on Listener Port. false - AllowAll, true - Use Authorization resource rules if present.
  final pulumi.Input<bool>? authorizationEnabled;
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;
  /// The k8s cr/resource reference of mq/broker.
  final pulumi.Input<String> brokerRef;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// Name of MQ broker/listener resource
  final pulumi.Input<String>? listenerName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The node port to use on the Host node.
  final pulumi.Input<int>? nodePort;
  /// The port to start Listening for connections on.
  final pulumi.Input<int> port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The service name to expose Listener port on.
  final pulumi.Input<String>? serviceName;
  /// The Kubernetes Service type to deploy for Listener.
  final pulumi.Input<String>? serviceType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Defines configuration of a TLS server certificate. NOTE Enum - Only one TLS Cert method is supported
  final pulumi.Input<TlsCertMethod>? tls;

  /// Creates a new [BrokerListenerArgs].
  /// [authenticationEnabled] The flag for enabling Authentication rules on Listener Port.
  /// [authorizationEnabled] The flag for enabling Authorization policies on Listener Port. false - AllowAll, true - Use Authorization resource rules if present.
  /// [brokerName] Name of MQ broker resource
  /// [brokerRef] The k8s cr/resource reference of mq/broker.
  /// [extendedLocation] Extended Location
  /// [listenerName] Name of MQ broker/listener resource
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [nodePort] The node port to use on the Host node.
  /// [port] The port to start Listening for connections on.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The service name to expose Listener port on.
  /// [serviceType] The Kubernetes Service type to deploy for Listener.
  /// [tags] Resource tags.
  /// [tls] Defines configuration of a TLS server certificate. NOTE Enum - Only one TLS Cert method is supported
  const BrokerListenerArgs({
    this.authenticationEnabled,
    this.authorizationEnabled,
    required this.brokerName,
    required this.brokerRef,
    required this.extendedLocation,
    this.listenerName,
    this.location,
    required this.mqName,
    this.nodePort,
    required this.port,
    required this.resourceGroupName,
    this.serviceName,
    this.serviceType,
    this.tags,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationEnabled': ?authenticationEnabled,
      'authorizationEnabled': ?authorizationEnabled,
      'brokerName': brokerName,
      'brokerRef': brokerRef,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'listenerName': ?listenerName,
      'location': ?location,
      'mqName': mqName,
      'nodePort': ?nodePort,
      'port': port,
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
      'tags': ?tags,
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsCertMethod, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory BrokerListenerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerListenerArgs(
      authenticationEnabled: (() { final guardedValue = map['authenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authorizationEnabled: (() { final guardedValue = map['authorizationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      brokerName: pulumi.Input.fromValue(map['brokerName'] as String),
      brokerRef: pulumi.Input.fromValue(map['brokerRef'] as String),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      listenerName: (() { final guardedValue = map['listenerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      nodePort: (() { final guardedValue = map['nodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsCertMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
