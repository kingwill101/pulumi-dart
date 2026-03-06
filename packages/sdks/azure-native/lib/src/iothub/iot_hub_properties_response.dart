// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_to_device_properties_response.dart';
import 'event_hub_properties_response.dart';
import 'iot_hub_location_description_response.dart';
import 'ip_filter_rule_response.dart';
import 'messaging_endpoint_properties_response.dart';
import 'network_rule_set_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'routing_properties_response.dart';
import 'shared_access_signature_authorization_rule_response.dart';
import 'storage_endpoint_properties_response.dart';

/// The properties of an IoT hub.
class IotHubPropertiesResponse {
  /// List of allowed FQDNs(Fully Qualified Domain Name) for egress from Iot Hub.
  final pulumi.Input<List<String>>? allowedFqdnList;
  /// The shared access policies you can use to secure a connection to the IoT hub.
  final pulumi.Input<List<SharedAccessSignatureAuthorizationRuleResponse>>? authorizationPolicies;
  /// The IoT hub cloud-to-device messaging properties.
  final pulumi.Input<CloudToDevicePropertiesResponse>? cloudToDevice;
  /// IoT hub comments.
  final pulumi.Input<String>? comments;
  /// If true, all device(including Edge devices but excluding modules) scoped SAS keys cannot be used for authentication.
  final pulumi.Input<bool>? disableDeviceSAS;
  /// If true, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// If true, all module scoped SAS keys cannot be used for authentication.
  final pulumi.Input<bool>? disableModuleSAS;
  /// This property when set to true, will enable data residency, thus, disabling disaster recovery.
  final pulumi.Input<bool>? enableDataResidency;
  /// If True, file upload notifications are enabled.
  final pulumi.Input<bool>? enableFileUploadNotifications;
  /// The Event Hub-compatible endpoint properties. The only possible keys to this dictionary is events. This key has to be present in the dictionary while making create or update calls for the IoT hub.
  final pulumi.Input<Map<String, EventHubPropertiesResponse>>? eventHubEndpoints;
  /// The capabilities and features enabled for the IoT hub.
  final pulumi.Input<String>? features;
  /// The name of the host.
  final pulumi.Input<String> hostName;
  /// The IP filter rules.
  final pulumi.Input<List<IpFilterRuleResponse>>? ipFilterRules;
  /// Primary and secondary location for iot hub
  final pulumi.Input<List<IotHubLocationDescriptionResponse>> locations;
  /// The messaging endpoint properties for the file upload notification queue.
  final pulumi.Input<Map<String, MessagingEndpointPropertiesResponse>>? messagingEndpoints;
  /// Specifies the minimum TLS version to support for this hub. Can be set to "1.2" to have clients that use a TLS version below 1.2 to be rejected.
  final pulumi.Input<String>? minTlsVersion;
  /// Network Rule Set Properties of IotHub
  final pulumi.Input<NetworkRuleSetPropertiesResponse>? networkRuleSets;
  /// Private endpoint connections created on this IotHub
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>? privateEndpointConnections;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Whether requests from Public Network are allowed
  final pulumi.Input<String>? publicNetworkAccess;
  /// If true, egress from IotHub will be restricted to only the allowed FQDNs that are configured via allowedFqdnList.
  final pulumi.Input<bool>? restrictOutboundNetworkAccess;
  /// The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
  final pulumi.Input<RoutingPropertiesResponse>? routing;
  /// The hub state.
  final pulumi.Input<String> state;
  /// The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown.
  final pulumi.Input<Map<String, StorageEndpointPropertiesResponse>>? storageEndpoints;

  /// Creates a new [IotHubPropertiesResponse].
  /// [allowedFqdnList] List of allowed FQDNs(Fully Qualified Domain Name) for egress from Iot Hub.
  /// [authorizationPolicies] The shared access policies you can use to secure a connection to the IoT hub.
  /// [cloudToDevice] The IoT hub cloud-to-device messaging properties.
  /// [comments] IoT hub comments.
  /// [disableDeviceSAS] If true, all device(including Edge devices but excluding modules) scoped SAS keys cannot be used for authentication.
  /// [disableLocalAuth] If true, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication.
  /// [disableModuleSAS] If true, all module scoped SAS keys cannot be used for authentication.
  /// [enableDataResidency] This property when set to true, will enable data residency, thus, disabling disaster recovery.
  /// [enableFileUploadNotifications] If True, file upload notifications are enabled.
  /// [eventHubEndpoints] The Event Hub-compatible endpoint properties. The only possible keys to this dictionary is events. This key has to be present in the dictionary while making create or update calls for the IoT hub.
  /// [features] The capabilities and features enabled for the IoT hub.
  /// [hostName] The name of the host.
  /// [ipFilterRules] The IP filter rules.
  /// [locations] Primary and secondary location for iot hub
  /// [messagingEndpoints] The messaging endpoint properties for the file upload notification queue.
  /// [minTlsVersion] Specifies the minimum TLS version to support for this hub. Can be set to "1.2" to have clients that use a TLS version below 1.2 to be rejected.
  /// [networkRuleSets] Network Rule Set Properties of IotHub
  /// [privateEndpointConnections] Private endpoint connections created on this IotHub
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [restrictOutboundNetworkAccess] If true, egress from IotHub will be restricted to only the allowed FQDNs that are configured via allowedFqdnList.
  /// [routing] The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
  /// [state] The hub state.
  /// [storageEndpoints] The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown.
  const IotHubPropertiesResponse({
    this.allowedFqdnList,
    this.authorizationPolicies,
    this.cloudToDevice,
    this.comments,
    this.disableDeviceSAS,
    this.disableLocalAuth,
    this.disableModuleSAS,
    this.enableDataResidency,
    this.enableFileUploadNotifications,
    this.eventHubEndpoints,
    this.features,
    required this.hostName,
    this.ipFilterRules,
    required this.locations,
    this.messagingEndpoints,
    this.minTlsVersion,
    this.networkRuleSets,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.restrictOutboundNetworkAccess,
    this.routing,
    required this.state,
    this.storageEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFqdnList': ?allowedFqdnList,
      'authorizationPolicies': ?pulumi.Input.mapOptionalInputValue<List<SharedAccessSignatureAuthorizationRuleResponse>, List<Map<String, dynamic>>>(authorizationPolicies, (value) => pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudToDevice': ?pulumi.Input.mapOptionalInputValue<CloudToDevicePropertiesResponse, Map<String, dynamic>>(cloudToDevice, (value) => value.toMap()),
      'comments': ?comments,
      'disableDeviceSAS': ?disableDeviceSAS,
      'disableLocalAuth': ?disableLocalAuth,
      'disableModuleSAS': ?disableModuleSAS,
      'enableDataResidency': ?enableDataResidency,
      'enableFileUploadNotifications': ?enableFileUploadNotifications,
      'eventHubEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, EventHubPropertiesResponse>, Map<String, Map<String, dynamic>>>(eventHubEndpoints, (value) => pulumi.Input.encodeMapValues<EventHubPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?features,
      'hostName': hostName,
      'ipFilterRules': ?pulumi.Input.mapOptionalInputValue<List<IpFilterRuleResponse>, List<Map<String, dynamic>>>(ipFilterRules, (value) => pulumi.Input.encodeList<IpFilterRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': pulumi.Input.mapInputValue<List<IotHubLocationDescriptionResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<IotHubLocationDescriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messagingEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, MessagingEndpointPropertiesResponse>, Map<String, Map<String, dynamic>>>(messagingEndpoints, (value) => pulumi.Input.encodeMapValues<MessagingEndpointPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minTlsVersion': ?minTlsVersion,
      'networkRuleSets': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSetPropertiesResponse, Map<String, dynamic>>(networkRuleSets, (value) => value.toMap()),
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'routing': ?pulumi.Input.mapOptionalInputValue<RoutingPropertiesResponse, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'state': state,
      'storageEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, StorageEndpointPropertiesResponse>, Map<String, Map<String, dynamic>>>(storageEndpoints, (value) => pulumi.Input.encodeMapValues<StorageEndpointPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IotHubPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IotHubPropertiesResponse(
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizationPolicies: (() { final guardedValue = map['authorizationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleResponse>(guardedValue, (value) => SharedAccessSignatureAuthorizationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudToDevice: (() { final guardedValue = map['cloudToDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudToDevicePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableDeviceSAS: (() { final guardedValue = map['disableDeviceSAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableModuleSAS: (() { final guardedValue = map['disableModuleSAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDataResidency: (() { final guardedValue = map['enableDataResidency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFileUploadNotifications: (() { final guardedValue = map['enableFileUploadNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventHubEndpoints: (() { final guardedValue = map['eventHubEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EventHubPropertiesResponse>(guardedValue, (value) => EventHubPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      ipFilterRules: (() { final guardedValue = map['ipFilterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpFilterRuleResponse>(guardedValue, (value) => IpFilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<IotHubLocationDescriptionResponse>(map['locations']!, (value) => IotHubLocationDescriptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      messagingEndpoints: (() { final guardedValue = map['messagingEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<MessagingEndpointPropertiesResponse>(guardedValue, (value) => MessagingEndpointPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleSets: (() { final guardedValue = map['networkRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
      storageEndpoints: (() { final guardedValue = map['storageEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<StorageEndpointPropertiesResponse>(guardedValue, (value) => StorageEndpointPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

