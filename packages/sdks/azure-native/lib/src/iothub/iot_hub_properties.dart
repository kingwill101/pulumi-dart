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
  final List<String>? allowedFqdnList;
  /// The shared access policies you can use to secure a connection to the IoT hub.
  final List<SharedAccessSignatureAuthorizationRule>? authorizationPolicies;
  /// The IoT hub cloud-to-device messaging properties.
  final CloudToDeviceProperties? cloudToDevice;
  /// IoT hub comments.
  final String? comments;
  /// If true, all device(including Edge devices but excluding modules) scoped SAS keys cannot be used for authentication.
  final bool? disableDeviceSAS;
  /// If true, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication.
  final bool? disableLocalAuth;
  /// If true, all module scoped SAS keys cannot be used for authentication.
  final bool? disableModuleSAS;
  /// This property when set to true, will enable data residency, thus, disabling disaster recovery.
  final bool? enableDataResidency;
  /// If True, file upload notifications are enabled.
  final bool? enableFileUploadNotifications;
  /// The Event Hub-compatible endpoint properties. The only possible keys to this dictionary is events. This key has to be present in the dictionary while making create or update calls for the IoT hub.
  final Map<String, EventHubProperties>? eventHubEndpoints;
  /// The capabilities and features enabled for the IoT hub.
  final String? features;
  /// The IP filter rules.
  final List<IpFilterRule>? ipFilterRules;
  /// The messaging endpoint properties for the file upload notification queue.
  final Map<String, MessagingEndpointProperties>? messagingEndpoints;
  /// Specifies the minimum TLS version to support for this hub. Can be set to "1.2" to have clients that use a TLS version below 1.2 to be rejected.
  final String? minTlsVersion;
  /// Network Rule Set Properties of IotHub
  final NetworkRuleSetProperties? networkRuleSets;
  /// Private endpoint connections created on this IotHub
  final List<PrivateEndpointConnection>? privateEndpointConnections;
  /// Whether requests from Public Network are allowed
  final String? publicNetworkAccess;
  /// If true, egress from IotHub will be restricted to only the allowed FQDNs that are configured via allowedFqdnList.
  final bool? restrictOutboundNetworkAccess;
  /// The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
  final RoutingProperties? routing;
  /// The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown.
  final Map<String, StorageEndpointProperties>? storageEndpoints;

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
  IotHubProperties({
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
      'authorizationPolicies': ?authorizationPolicies == null ? null : pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRule, Map<String, dynamic>>(authorizationPolicies!, (value) => value.toMap()),
      'cloudToDevice': ?cloudToDevice == null ? null : cloudToDevice!.toMap(),
      'comments': ?comments,
      'disableDeviceSAS': ?disableDeviceSAS,
      'disableLocalAuth': ?disableLocalAuth,
      'disableModuleSAS': ?disableModuleSAS,
      'enableDataResidency': ?enableDataResidency,
      'enableFileUploadNotifications': ?enableFileUploadNotifications,
      'eventHubEndpoints': ?eventHubEndpoints == null ? null : pulumi.Input.encodeMapValues<EventHubProperties, Map<String, dynamic>>(eventHubEndpoints!, (value) => value.toMap()),
      'features': ?features,
      'ipFilterRules': ?ipFilterRules == null ? null : pulumi.Input.encodeList<IpFilterRule, Map<String, dynamic>>(ipFilterRules!, (value) => value.toMap()),
      'messagingEndpoints': ?messagingEndpoints == null ? null : pulumi.Input.encodeMapValues<MessagingEndpointProperties, Map<String, dynamic>>(messagingEndpoints!, (value) => value.toMap()),
      'minTlsVersion': ?minTlsVersion,
      'networkRuleSets': ?networkRuleSets == null ? null : networkRuleSets!.toMap(),
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'routing': ?routing == null ? null : routing!.toMap(),
      'storageEndpoints': ?storageEndpoints == null ? null : pulumi.Input.encodeMapValues<StorageEndpointProperties, Map<String, dynamic>>(storageEndpoints!, (value) => value.toMap()),
    };
  }

  factory IotHubProperties.fromMap(Map<String, dynamic> map) {
    return IotHubProperties(
      allowedFqdnList: map['allowedFqdnList'] == null ? null : (map['allowedFqdnList'] as List).cast<String>(),
      authorizationPolicies: map['authorizationPolicies'] == null ? null : pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRule>(map['authorizationPolicies'], (value) => SharedAccessSignatureAuthorizationRule.fromMap((value as Map).cast<String, dynamic>())),
      cloudToDevice: map['cloudToDevice'] == null ? null : CloudToDeviceProperties.fromMap((map['cloudToDevice'] as Map).cast<String, dynamic>()),
      comments: map['comments'] == null ? null : map['comments'] as String,
      disableDeviceSAS: map['disableDeviceSAS'] == null ? null : map['disableDeviceSAS'] as bool,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      disableModuleSAS: map['disableModuleSAS'] == null ? null : map['disableModuleSAS'] as bool,
      enableDataResidency: map['enableDataResidency'] == null ? null : map['enableDataResidency'] as bool,
      enableFileUploadNotifications: map['enableFileUploadNotifications'] == null ? null : map['enableFileUploadNotifications'] as bool,
      eventHubEndpoints: map['eventHubEndpoints'] == null ? null : pulumi.Input.decodeMapValues<EventHubProperties>(map['eventHubEndpoints'], (value) => EventHubProperties.fromMap((value as Map).cast<String, dynamic>())),
      features: map['features'] == null ? null : map['features'] as String,
      ipFilterRules: map['ipFilterRules'] == null ? null : pulumi.Input.decodeList<IpFilterRule>(map['ipFilterRules'], (value) => IpFilterRule.fromMap((value as Map).cast<String, dynamic>())),
      messagingEndpoints: map['messagingEndpoints'] == null ? null : pulumi.Input.decodeMapValues<MessagingEndpointProperties>(map['messagingEndpoints'], (value) => MessagingEndpointProperties.fromMap((value as Map).cast<String, dynamic>())),
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      networkRuleSets: map['networkRuleSets'] == null ? null : NetworkRuleSetProperties.fromMap((map['networkRuleSets'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnection>(map['privateEndpointConnections'], (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : map['restrictOutboundNetworkAccess'] as bool,
      routing: map['routing'] == null ? null : RoutingProperties.fromMap((map['routing'] as Map).cast<String, dynamic>()),
      storageEndpoints: map['storageEndpoints'] == null ? null : pulumi.Input.decodeMapValues<StorageEndpointProperties>(map['storageEndpoints'], (value) => StorageEndpointProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

