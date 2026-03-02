// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_connection_draining_response.dart';
import 'sub_resource_response.dart';

/// Backend address pool settings of an application gateway.
class ApplicationGatewayBackendHttpSettingsResponse {
  /// Cookie name to use for the affinity cookie.
  final pulumi.Input<String>? affinityCookieName;
  /// Array of references to application gateway authentication certificates.
  final pulumi.Input<List<SubResourceResponse>>? authenticationCertificates;
  /// Connection draining of the backend http settings resource.
  final pulumi.Input<ApplicationGatewayConnectionDrainingResponse>? connectionDraining;
  /// Cookie based affinity.
  final pulumi.Input<String>? cookieBasedAffinity;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Host header to be sent to the backend servers.
  final pulumi.Input<String>? hostName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the backend http settings that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path which should be used as a prefix for all HTTP requests. Null means no path will be prefixed. Default value is null.
  final pulumi.Input<String>? path;
  /// Whether to pick host header should be picked from the host name of the backend server. Default value is false.
  final pulumi.Input<bool>? pickHostNameFromBackendAddress;
  /// The destination port on the backend.
  final pulumi.Input<int>? port;
  /// Probe resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? probe;
  /// Whether the probe is enabled. Default value is false.
  final pulumi.Input<bool>? probeEnabled;
  /// The protocol used to communicate with the backend.
  final pulumi.Input<String>? protocol;
  /// The provisioning state of the backend HTTP settings resource.
  final pulumi.Input<String> provisioningState;
  /// Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? requestTimeout;
  /// Array of references to application gateway trusted root certificates.
  final pulumi.Input<List<SubResourceResponse>>? trustedRootCertificates;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayBackendHttpSettingsResponse].
  /// [affinityCookieName] Cookie name to use for the affinity cookie.
  /// [authenticationCertificates] Array of references to application gateway authentication certificates.
  /// [connectionDraining] Connection draining of the backend http settings resource.
  /// [cookieBasedAffinity] Cookie based affinity.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hostName] Host header to be sent to the backend servers.
  /// [id] Resource ID.
  /// [name] Name of the backend http settings that is unique within an Application Gateway.
  /// [path] Path which should be used as a prefix for all HTTP requests. Null means no path will be prefixed. Default value is null.
  /// [pickHostNameFromBackendAddress] Whether to pick host header should be picked from the host name of the backend server. Default value is false.
  /// [port] The destination port on the backend.
  /// [probe] Probe resource of an application gateway.
  /// [probeEnabled] Whether the probe is enabled. Default value is false.
  /// [protocol] The protocol used to communicate with the backend.
  /// [provisioningState] The provisioning state of the backend HTTP settings resource.
  /// [requestTimeout] Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds.
  /// [trustedRootCertificates] Array of references to application gateway trusted root certificates.
  /// [type] Type of the resource.
  ApplicationGatewayBackendHttpSettingsResponse({
    this.affinityCookieName,
    this.authenticationCertificates,
    this.connectionDraining,
    this.cookieBasedAffinity,
    required this.etag,
    this.hostName,
    this.id,
    this.name,
    this.path,
    this.pickHostNameFromBackendAddress,
    this.port,
    this.probe,
    this.probeEnabled,
    this.protocol,
    required this.provisioningState,
    this.requestTimeout,
    this.trustedRootCertificates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieName': ?affinityCookieName,
      'authenticationCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionDraining': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayConnectionDrainingResponse, Map<String, dynamic>>(connectionDraining, (value) => value.toMap()),
      'cookieBasedAffinity': ?cookieBasedAffinity,
      'etag': etag,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'pickHostNameFromBackendAddress': ?pickHostNameFromBackendAddress,
      'port': ?port,
      'probe': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(probe, (value) => value.toMap()),
      'probeEnabled': ?probeEnabled,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'requestTimeout': ?requestTimeout,
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ApplicationGatewayBackendHttpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendHttpSettingsResponse(
      affinityCookieName: map['affinityCookieName'] == null ? null : (map['affinityCookieName'] as String).input(),
      authenticationCertificates: map['authenticationCertificates'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['authenticationCertificates'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionDraining: map['connectionDraining'] == null ? null : (ApplicationGatewayConnectionDrainingResponse.fromMap((map['connectionDraining'] as Map).cast<String, dynamic>())).input(),
      cookieBasedAffinity: map['cookieBasedAffinity'] == null ? null : (map['cookieBasedAffinity'] as String).input(),
      etag: (map['etag'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      pickHostNameFromBackendAddress: map['pickHostNameFromBackendAddress'] == null ? null : (map['pickHostNameFromBackendAddress'] as bool).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      probe: map['probe'] == null ? null : (SubResourceResponse.fromMap((map['probe'] as Map).cast<String, dynamic>())).input(),
      probeEnabled: map['probeEnabled'] == null ? null : (map['probeEnabled'] as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout'] as int).input(),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['trustedRootCertificates'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

