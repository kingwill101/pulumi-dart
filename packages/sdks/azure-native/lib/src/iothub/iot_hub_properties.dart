// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_to_device_properties.dart';
import 'event_hub_properties.dart';
import 'ip_filter_rule.dart';
import 'messaging_endpoint_properties.dart';
import 'network_rule_set_properties.dart';
import 'private_endpoint_connection.dart';
import 'routing_properties.dart';
import 'shared_access_signature_authorization_rule.dart';
import 'storage_endpoint_properties.dart';

/// The properties of an IoT hub.
class IotHubProperties {
  /// List of allowed FQDNs(Fully Qualified Domain Name) for egress from Iot Hub.
  final pulumi.Input<List<String>>? allowedFqdnList;
  /// The shared access policies you can use to secure a connection to the IoT hub.
  final pulumi.Input<List<SharedAccessSignatureAuthorizationRule>>? authorizationPolicies;
  /// The IoT hub cloud-to-device messaging properties.
  final pulumi.Input<CloudToDeviceProperties>? cloudToDevice;
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
  final pulumi.Input<Map<String, EventHubProperties>>? eventHubEndpoints;
  /// The capabilities and features enabled for the IoT hub.
  final pulumi.Input<String>? features;
  /// The IP filter rules.
  final pulumi.Input<List<IpFilterRule>>? ipFilterRules;
  /// The messaging endpoint properties for the file upload notification queue.
  final pulumi.Input<Map<String, MessagingEndpointProperties>>? messagingEndpoints;
  /// Specifies the minimum TLS version to support for this hub. Can be set to "1.2" to have clients that use a TLS version below 1.2 to be rejected.
  final pulumi.Input<String>? minTlsVersion;
  /// Network Rule Set Properties of IotHub
  final pulumi.Input<NetworkRuleSetProperties>? networkRuleSets;
  /// Private endpoint connections created on this IotHub
  final pulumi.Input<List<PrivateEndpointConnection>>? privateEndpointConnections;
  /// Whether requests from Public Network are allowed
  final pulumi.Input<String>? publicNetworkAccess;
  /// If true, egress from IotHub will be restricted to only the allowed FQDNs that are configured via allowedFqdnList.
  final pulumi.Input<bool>? restrictOutboundNetworkAccess;
  /// The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
  final pulumi.Input<RoutingProperties>? routing;
  /// The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown.
  final pulumi.Input<Map<String, StorageEndpointProperties>>? storageEndpoints;

  /// Creates a new [IotHubProperties].
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
  /// [ipFilterRules] The IP filter rules.
  /// [messagingEndpoints] The messaging endpoint properties for the file upload notification queue.
  /// [minTlsVersion] Specifies the minimum TLS version to support for this hub. Can be set to "1.2" to have clients that use a TLS version below 1.2 to be rejected.
  /// [networkRuleSets] Network Rule Set Properties of IotHub
  /// [privateEndpointConnections] Private endpoint connections created on this IotHub
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [restrictOutboundNetworkAccess] If true, egress from IotHub will be restricted to only the allowed FQDNs that are configured via allowedFqdnList.
  /// [routing] The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
  /// [storageEndpoints] The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown.
  const IotHubProperties({
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
    this.ipFilterRules,
    this.messagingEndpoints,
    this.minTlsVersion,
    this.networkRuleSets,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.restrictOutboundNetworkAccess,
    this.routing,
    this.storageEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFqdnList': ?allowedFqdnList,
      'authorizationPolicies': ?pulumi.Input.mapOptionalInputValue<List<SharedAccessSignatureAuthorizationRule>, List<Map<String, dynamic>>>(authorizationPolicies, (value) => pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudToDevice': ?pulumi.Input.mapOptionalInputValue<CloudToDeviceProperties, Map<String, dynamic>>(cloudToDevice, (value) => value.toMap()),
      'comments': ?comments,
      'disableDeviceSAS': ?disableDeviceSAS,
      'disableLocalAuth': ?disableLocalAuth,
      'disableModuleSAS': ?disableModuleSAS,
      'enableDataResidency': ?enableDataResidency,
      'enableFileUploadNotifications': ?enableFileUploadNotifications,
      'eventHubEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, EventHubProperties>, Map<String, Map<String, dynamic>>>(eventHubEndpoints, (value) => pulumi.Input.encodeMapValues<EventHubProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?features,
      'ipFilterRules': ?pulumi.Input.mapOptionalInputValue<List<IpFilterRule>, List<Map<String, dynamic>>>(ipFilterRules, (value) => pulumi.Input.encodeList<IpFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messagingEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, MessagingEndpointProperties>, Map<String, Map<String, dynamic>>>(messagingEndpoints, (value) => pulumi.Input.encodeMapValues<MessagingEndpointProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minTlsVersion': ?minTlsVersion,
      'networkRuleSets': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSetProperties, Map<String, dynamic>>(networkRuleSets, (value) => value.toMap()),
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'routing': ?pulumi.Input.mapOptionalInputValue<RoutingProperties, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'storageEndpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, StorageEndpointProperties>, Map<String, Map<String, dynamic>>>(storageEndpoints, (value) => pulumi.Input.encodeMapValues<StorageEndpointProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IotHubProperties.fromMap(Map<String, dynamic> map) {
    return IotHubProperties(
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizationPolicies: (() { final guardedValue = map['authorizationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRule>(guardedValue, (value) => SharedAccessSignatureAuthorizationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudToDevice: (() { final guardedValue = map['cloudToDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudToDeviceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableDeviceSAS: (() { final guardedValue = map['disableDeviceSAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableModuleSAS: (() { final guardedValue = map['disableModuleSAS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDataResidency: (() { final guardedValue = map['enableDataResidency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFileUploadNotifications: (() { final guardedValue = map['enableFileUploadNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventHubEndpoints: (() { final guardedValue = map['eventHubEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<EventHubProperties>(guardedValue, (value) => EventHubProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipFilterRules: (() { final guardedValue = map['ipFilterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpFilterRule>(guardedValue, (value) => IpFilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messagingEndpoints: (() { final guardedValue = map['messagingEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<MessagingEndpointProperties>(guardedValue, (value) => MessagingEndpointProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleSets: (() { final guardedValue = map['networkRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSetProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageEndpoints: (() { final guardedValue = map['storageEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<StorageEndpointProperties>(guardedValue, (value) => StorageEndpointProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
