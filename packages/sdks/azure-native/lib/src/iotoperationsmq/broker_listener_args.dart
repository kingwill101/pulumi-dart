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
  BrokerListenerArgs({
    pulumi.Output<bool>? authenticationEnabled,
    pulumi.Output<bool>? authorizationEnabled,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<String> brokerRef,
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    pulumi.Output<String>? listenerName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> mqName,
    pulumi.Output<int>? nodePort,
    required pulumi.Output<int> port,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TlsCertMethod>? tls,
  }) :
      authenticationEnabled = pulumi.Input.asOptionalInput<bool>(authenticationEnabled),
      authorizationEnabled = pulumi.Input.asOptionalInput<bool>(authorizationEnabled),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      brokerRef = pulumi.Input.asInput<String>(brokerRef),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      listenerName = pulumi.Input.asOptionalInput<String>(listenerName),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asInput<String>(mqName),
      nodePort = pulumi.Input.asOptionalInput<int>(nodePort),
      port = pulumi.Input.asInput<int>(port),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tls = pulumi.Input.asOptionalInput<TlsCertMethod>(tls);

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
      authenticationEnabled: map['authenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['authenticationEnabled'] as bool),
      authorizationEnabled: map['authorizationEnabled'] == null ? null : pulumi.Output.create<bool>(map['authorizationEnabled'] as bool),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      brokerRef: pulumi.Output.create<String>(map['brokerRef'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      listenerName: map['listenerName'] == null ? null : pulumi.Output.create<String>(map['listenerName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      nodePort: map['nodePort'] == null ? null : pulumi.Output.create<int>(map['nodePort'] as int),
      port: pulumi.Output.create<int>(map['port'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceType: map['serviceType'] == null ? null : pulumi.Output.create<String>(map['serviceType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tls: map['tls'] == null ? null : pulumi.Output.create<TlsCertMethod>(TlsCertMethod.fromMap((map['tls'] as Map).cast<String, dynamic>())),
    );
  }
}

