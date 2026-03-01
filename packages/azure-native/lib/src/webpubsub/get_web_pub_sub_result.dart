// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration_response.dart';
import 'managed_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'resource_log_configuration_response.dart';
import 'resource_sku_response.dart';
import 'shared_private_link_resource_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_network_acls_response.dart';
import 'web_pub_sub_socket_iosettings_response.dart';
import 'web_pub_sub_tls_settings_response.dart';

/// Result data returned by getWebPubSub.
class GetWebPubSubResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// DisableLocalAuth
  /// Enable or disable aad auth
  /// When set as true, connection with AuthType=aad won't work.
  final bool? disableAadAuth;
  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  final bool? disableLocalAuth;
  /// The publicly accessible IP of the resource.
  final String externalIP;
  /// FQDN of the service instance.
  final String hostName;
  /// Deprecated.
  final String hostNamePrefix;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// A class represent managed identities used for request and response
  final ManagedIdentityResponse? identity;
  /// The kind of the service
  final String? kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  final LiveTraceConfigurationResponse? liveTraceConfiguration;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Network ACLs for the resource
  final WebPubSubNetworkACLsResponse? networkACLs;
  /// Private endpoint connections to the resource.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Enable or disable public network access. Default to "Enabled".
  /// When it's Enabled, network ACLs still apply.
  /// When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
  final String? publicNetworkAccess;
  /// The publicly accessible port of the resource which is designed for browser/client side usage.
  final int publicPort;
  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  /// This property is replica specific. Disable the regional endpoint without replica is not allowed.
  final String? regionEndpointEnabled;
  /// Resource log configuration of a Microsoft.SignalRService resource.
  final ResourceLogConfigurationResponse? resourceLogConfiguration;
  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  final String? resourceStopped;
  /// The publicly accessible port of the resource which is designed for customer server side usage.
  final int serverPort;
  /// The list of shared private link resources.
  final List<SharedPrivateLinkResourceResponse> sharedPrivateLinkResources;
  /// The billing information of the resource.
  final ResourceSkuResponse? sku;
  /// SocketIO settings for the resource
  final WebPubSubSocketIOSettingsResponse? socketIO;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// TLS settings for the resource
  final WebPubSubTlsSettingsResponse? tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of the resource. Probably you need the same or higher version of client SDKs.
  final String version;

  /// Creates a new [GetWebPubSubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableAadAuth] DisableLocalAuth
  /// [disableLocalAuth] DisableLocalAuth
  /// [externalIP] The publicly accessible IP of the resource.
  /// [hostName] FQDN of the service instance.
  /// [hostNamePrefix] Deprecated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] A class represent managed identities used for request and response
  /// [kind] The kind of the service
  /// [liveTraceConfiguration] Live trace configuration of a Microsoft.SignalRService resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkACLs] Network ACLs for the resource
  /// [privateEndpointConnections] Private endpoint connections to the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [publicNetworkAccess] Enable or disable public network access. Default to "Enabled".
  /// [publicPort] The publicly accessible port of the resource which is designed for browser/client side usage.
  /// [regionEndpointEnabled] Enable or disable the regional endpoint. Default to "Enabled".
  /// [resourceLogConfiguration] Resource log configuration of a Microsoft.SignalRService resource.
  /// [resourceStopped] Stop or start the resource.  Default to "False".
  /// [serverPort] The publicly accessible port of the resource which is designed for customer server side usage.
  /// [sharedPrivateLinkResources] The list of shared private link resources.
  /// [sku] The billing information of the resource.
  /// [socketIO] SocketIO settings for the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tls] TLS settings for the resource
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the resource. Probably you need the same or higher version of client SDKs.
  GetWebPubSubResult({
    required this.azureApiVersion,
    this.disableAadAuth,
    this.disableLocalAuth,
    required this.externalIP,
    required this.hostName,
    required this.hostNamePrefix,
    required this.id,
    this.identity,
    this.kind,
    this.liveTraceConfiguration,
    required this.location,
    required this.name,
    this.networkACLs,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.publicPort,
    this.regionEndpointEnabled,
    this.resourceLogConfiguration,
    this.resourceStopped,
    required this.serverPort,
    required this.sharedPrivateLinkResources,
    this.sku,
    this.socketIO,
    required this.systemData,
    this.tags,
    this.tls,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'disableAadAuth': ?disableAadAuth,
      'disableLocalAuth': ?disableLocalAuth,
      'externalIP': externalIP,
      'hostName': hostName,
      'hostNamePrefix': hostNamePrefix,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'liveTraceConfiguration': ?liveTraceConfiguration == null ? null : liveTraceConfiguration!.toMap(),
      'location': location,
      'name': name,
      'networkACLs': ?networkACLs == null ? null : networkACLs!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publicPort': publicPort,
      'regionEndpointEnabled': ?regionEndpointEnabled,
      'resourceLogConfiguration': ?resourceLogConfiguration == null ? null : resourceLogConfiguration!.toMap(),
      'resourceStopped': ?resourceStopped,
      'serverPort': serverPort,
      'sharedPrivateLinkResources': pulumi.Input.encodeList<SharedPrivateLinkResourceResponse, Map<String, dynamic>>(sharedPrivateLinkResources, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'socketIO': ?socketIO == null ? null : socketIO!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tls': ?tls == null ? null : tls!.toMap(),
      'type': type,
      'version': version,
    };
  }

  factory GetWebPubSubResult.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubResult(
      azureApiVersion: map['azureApiVersion'] as String,
      disableAadAuth: map['disableAadAuth'] == null ? null : map['disableAadAuth'] as bool,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      externalIP: map['externalIP'] as String,
      hostName: map['hostName'] as String,
      hostNamePrefix: map['hostNamePrefix'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      liveTraceConfiguration: map['liveTraceConfiguration'] == null ? null : LiveTraceConfigurationResponse.fromMap((map['liveTraceConfiguration'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      networkACLs: map['networkACLs'] == null ? null : WebPubSubNetworkACLsResponse.fromMap((map['networkACLs'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      publicPort: map['publicPort'] as int,
      regionEndpointEnabled: map['regionEndpointEnabled'] == null ? null : map['regionEndpointEnabled'] as String,
      resourceLogConfiguration: map['resourceLogConfiguration'] == null ? null : ResourceLogConfigurationResponse.fromMap((map['resourceLogConfiguration'] as Map).cast<String, dynamic>()),
      resourceStopped: map['resourceStopped'] == null ? null : map['resourceStopped'] as String,
      serverPort: map['serverPort'] as int,
      sharedPrivateLinkResources: pulumi.Input.decodeList<SharedPrivateLinkResourceResponse>(map['sharedPrivateLinkResources'], (value) => SharedPrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : ResourceSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      socketIO: map['socketIO'] == null ? null : WebPubSubSocketIOSettingsResponse.fromMap((map['socketIO'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tls: map['tls'] == null ? null : WebPubSubTlsSettingsResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

