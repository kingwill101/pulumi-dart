// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_property_response.dart';
import 'system_data_response.dart';
import 'tls_cert_method_response.dart';

/// Result data returned by getBrokerListener.
class GetBrokerListenerResult {
  /// The flag for enabling Authentication rules on Listener Port.
  final bool? authenticationEnabled;
  /// The flag for enabling Authorization policies on Listener Port. false - AllowAll, true - Use Authorization resource rules if present.
  final bool? authorizationEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The k8s cr/resource reference of mq/broker.
  final String brokerRef;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The node port to use on the Host node.
  final int? nodePort;
  /// The port to start Listening for connections on.
  final int port;
  /// The status of the last operation.
  final String provisioningState;
  /// The service name to expose Listener port on.
  final String? serviceName;
  /// The Kubernetes Service type to deploy for Listener.
  final String? serviceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Defines configuration of a TLS server certificate. NOTE Enum - Only one TLS Cert method is supported
  final TlsCertMethodResponse? tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBrokerListenerResult].
  /// [authenticationEnabled] The flag for enabling Authentication rules on Listener Port.
  /// [authorizationEnabled] The flag for enabling Authorization policies on Listener Port. false - AllowAll, true - Use Authorization resource rules if present.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [brokerRef] The k8s cr/resource reference of mq/broker.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [nodePort] The node port to use on the Host node.
  /// [port] The port to start Listening for connections on.
  /// [provisioningState] The status of the last operation.
  /// [serviceName] The service name to expose Listener port on.
  /// [serviceType] The Kubernetes Service type to deploy for Listener.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tls] Defines configuration of a TLS server certificate. NOTE Enum - Only one TLS Cert method is supported
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBrokerListenerResult({
    this.authenticationEnabled,
    this.authorizationEnabled,
    required this.azureApiVersion,
    required this.brokerRef,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    this.nodePort,
    required this.port,
    required this.provisioningState,
    this.serviceName,
    this.serviceType,
    required this.systemData,
    this.tags,
    this.tls,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationEnabled': ?authenticationEnabled,
      'authorizationEnabled': ?authorizationEnabled,
      'azureApiVersion': azureApiVersion,
      'brokerRef': brokerRef,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'nodePort': ?nodePort,
      'port': port,
      'provisioningState': provisioningState,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tls': ?tls?.toMap(),
      'type': type,
    };
  }

  factory GetBrokerListenerResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerListenerResult(
      authenticationEnabled: (() { final guardedValue = map['authenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authorizationEnabled: (() { final guardedValue = map['authorizationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      brokerRef: map['brokerRef'] as String,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nodePort: (() { final guardedValue = map['nodePort']; if (guardedValue == null) return null; return guardedValue as int; })(),
      port: map['port'] as int,
      provisioningState: map['provisioningState'] as String,
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return TlsCertMethodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}

