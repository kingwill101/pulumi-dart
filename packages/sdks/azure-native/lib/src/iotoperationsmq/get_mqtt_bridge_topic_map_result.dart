// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'mqtt_bridge_routes_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMqttBridgeTopicMap.
class GetMqttBridgeTopicMapResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The MqttBridgeConnector CRD it refers to.
  final String mqttBridgeConnectorRef;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// The route details for MqttBridge connector.
  final List<MqttBridgeRoutesResponse>? routes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMqttBridgeTopicMapResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [mqttBridgeConnectorRef] The MqttBridgeConnector CRD it refers to.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [routes] The route details for MqttBridge connector.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMqttBridgeTopicMapResult({
    required this.azureApiVersion,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.mqttBridgeConnectorRef,
    required this.name,
    required this.provisioningState,
    this.routes,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'mqttBridgeConnectorRef': mqttBridgeConnectorRef,
      'name': name,
      'provisioningState': provisioningState,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<MqttBridgeRoutesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMqttBridgeTopicMapResult.fromMap(Map<String, dynamic> map) {
    return GetMqttBridgeTopicMapResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      mqttBridgeConnectorRef: map['mqttBridgeConnectorRef'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MqttBridgeRoutesResponse>(guardedValue, (value) => MqttBridgeRoutesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

