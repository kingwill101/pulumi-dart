// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_cor.dart';
import 'service_identity.dart';
import 'service_live_trace.dart';
import 'service_sku.dart';
import 'service_upstream_endpoint.dart';

/// {@template pulumi_signalr_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_signalr_service_service_args_doc}
class ServiceArgs {
  /// Whether to enable AAD auth? Defaults to `true`.
  final pulumi.Input<bool>? aadAuthEnabled;
  /// Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? connectivityLogsEnabled;
  /// A `cors` block as documented below.
  final pulumi.Input<List<ServiceCor>>? cors;
  /// Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? httpRequestLogsEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// A `live_trace` block as defined below.
  final pulumi.Input<ServiceLiveTrace>? liveTrace;
  final pulumi.Input<bool>? liveTraceEnabled;
  /// Whether to enable local auth? Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  final pulumi.Input<bool>? messagingLogsEnabled;
  /// The name of the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether to enable public network access? Defaults to `true`.
  ///
  /// > **Note:** `public_network_access_enabled` cannot be set to `false` in `Free` sku tier.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the client connection timeout. Defaults to `30`.
  final pulumi.Input<int>? serverlessConnectionTimeoutInSeconds;
  /// Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  final pulumi.Input<String>? serviceMode;
  /// A `sku` block as documented below.
  final pulumi.Input<ServiceSku> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  ///
  /// > **Note:** `tls_client_cert_enabled` cannot be set to `true` in `Free` sku tier.
  final pulumi.Input<bool>? tlsClientCertEnabled;
  /// An `upstream_endpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  final pulumi.Input<List<ServiceUpstreamEndpoint>>? upstreamEndpoints;

  /// Creates a new [ServiceArgs].
  /// [aadAuthEnabled] Whether to enable AAD auth? Defaults to `true`.
  /// [connectivityLogsEnabled] Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  /// [cors] A `cors` block as documented below.
  /// [httpRequestLogsEnabled] Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [liveTrace] A `live_trace` block as defined below.
  /// [liveTraceEnabled] Optional.
  /// [localAuthEnabled] Whether to enable local auth? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  /// [messagingLogsEnabled] Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  /// [name] The name of the SignalR service. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether to enable public network access? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  /// [serverlessConnectionTimeoutInSeconds] Specifies the client connection timeout. Defaults to `30`.
  /// [serviceMode] Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsClientCertEnabled] Whether to request client certificate during TLS handshake? Defaults to `false`.
  /// [upstreamEndpoints] An `upstream_endpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  ServiceArgs({
    bool? aadAuthEnabled,
    bool? connectivityLogsEnabled,
    List<ServiceCor>? cors,
    bool? httpRequestLogsEnabled,
    ServiceIdentity? identity,
    ServiceLiveTrace? liveTrace,
    bool? liveTraceEnabled,
    bool? localAuthEnabled,
    String? location,
    bool? messagingLogsEnabled,
    String? name,
    bool? publicNetworkAccessEnabled,
    required String resourceGroupName,
    int? serverlessConnectionTimeoutInSeconds,
    String? serviceMode,
    required ServiceSku sku,
    Map<String, String>? tags,
    bool? tlsClientCertEnabled,
    List<ServiceUpstreamEndpoint>? upstreamEndpoints,
  }) :
      aadAuthEnabled = pulumi.Input.asOptionalInput<bool>(aadAuthEnabled),
      connectivityLogsEnabled = pulumi.Input.asOptionalInput<bool>(connectivityLogsEnabled),
      cors = pulumi.Input.asOptionalInput<List<ServiceCor>>(cors),
      httpRequestLogsEnabled = pulumi.Input.asOptionalInput<bool>(httpRequestLogsEnabled),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      liveTrace = pulumi.Input.asOptionalInput<ServiceLiveTrace>(liveTrace),
      liveTraceEnabled = pulumi.Input.asOptionalInput<bool>(liveTraceEnabled),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      messagingLogsEnabled = pulumi.Input.asOptionalInput<bool>(messagingLogsEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverlessConnectionTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(serverlessConnectionTimeoutInSeconds),
      serviceMode = pulumi.Input.asOptionalInput<String>(serviceMode),
      sku = pulumi.Input.asInput<ServiceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsClientCertEnabled = pulumi.Input.asOptionalInput<bool>(tlsClientCertEnabled),
      upstreamEndpoints = pulumi.Input.asOptionalInput<List<ServiceUpstreamEndpoint>>(upstreamEndpoints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'connectivityLogsEnabled': ?connectivityLogsEnabled,
      'cors': ?pulumi.Input.mapOptionalInputValue<List<ServiceCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<ServiceCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRequestLogsEnabled': ?httpRequestLogsEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'liveTrace': ?pulumi.Input.mapOptionalInputValue<ServiceLiveTrace, Map<String, dynamic>>(liveTrace, (value) => value.toMap()),
      'liveTraceEnabled': ?liveTraceEnabled,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'messagingLogsEnabled': ?messagingLogsEnabled,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'serverlessConnectionTimeoutInSeconds': ?serverlessConnectionTimeoutInSeconds,
      'serviceMode': ?serviceMode,
      'sku': pulumi.Input.mapInputValue<ServiceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tlsClientCertEnabled': ?tlsClientCertEnabled,
      'upstreamEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceUpstreamEndpoint>, List<Map<String, dynamic>>>(upstreamEndpoints, (value) => pulumi.Input.encodeList<ServiceUpstreamEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      aadAuthEnabled: map['aadAuthEnabled'] == null ? null : map['aadAuthEnabled'] as bool,
      connectivityLogsEnabled: map['connectivityLogsEnabled'] == null ? null : map['connectivityLogsEnabled'] as bool,
      cors: map['cors'] == null ? null : pulumi.Input.decodeList<ServiceCor>(map['cors'], (value) => ServiceCor.fromMap((value as Map).cast<String, dynamic>())),
      httpRequestLogsEnabled: map['httpRequestLogsEnabled'] == null ? null : map['httpRequestLogsEnabled'] as bool,
      identity: map['identity'] == null ? null : ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      liveTrace: map['liveTrace'] == null ? null : ServiceLiveTrace.fromMap((map['liveTrace'] as Map).cast<String, dynamic>()),
      liveTraceEnabled: map['liveTraceEnabled'] == null ? null : map['liveTraceEnabled'] as bool,
      localAuthEnabled: map['localAuthEnabled'] == null ? null : map['localAuthEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      messagingLogsEnabled: map['messagingLogsEnabled'] == null ? null : map['messagingLogsEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serverlessConnectionTimeoutInSeconds: map['serverlessConnectionTimeoutInSeconds'] == null ? null : map['serverlessConnectionTimeoutInSeconds'] as int,
      serviceMode: map['serviceMode'] == null ? null : map['serviceMode'] as String,
      sku: ServiceSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tlsClientCertEnabled: map['tlsClientCertEnabled'] == null ? null : map['tlsClientCertEnabled'] as bool,
      upstreamEndpoints: map['upstreamEndpoints'] == null ? null : pulumi.Input.decodeList<ServiceUpstreamEndpoint>(map['upstreamEndpoints'], (value) => ServiceUpstreamEndpoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

