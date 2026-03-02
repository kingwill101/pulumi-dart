// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_connection_draining.dart';
import 'sub_resource.dart';

/// Backend address pool settings of an application gateway.
class ApplicationGatewayBackendHttpSettings {
  /// Cookie name to use for the affinity cookie.
  final pulumi.Input<String>? affinityCookieName;
  /// Array of references to application gateway authentication certificates.
  final pulumi.Input<List<SubResource>>? authenticationCertificates;
  /// Connection draining of the backend http settings resource.
  final pulumi.Input<ApplicationGatewayConnectionDraining>? connectionDraining;
  /// Cookie based affinity.
  final pulumi.Input<String>? cookieBasedAffinity;
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
  final pulumi.Input<SubResource>? probe;
  /// Whether the probe is enabled. Default value is false.
  final pulumi.Input<bool>? probeEnabled;
  /// The protocol used to communicate with the backend.
  final pulumi.Input<String>? protocol;
  /// Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? requestTimeout;
  /// Array of references to application gateway trusted root certificates.
  final pulumi.Input<List<SubResource>>? trustedRootCertificates;

  /// Creates a new [ApplicationGatewayBackendHttpSettings].
  /// [affinityCookieName] Cookie name to use for the affinity cookie.
  /// [authenticationCertificates] Array of references to application gateway authentication certificates.
  /// [connectionDraining] Connection draining of the backend http settings resource.
  /// [cookieBasedAffinity] Cookie based affinity.
  /// [hostName] Host header to be sent to the backend servers.
  /// [id] Resource ID.
  /// [name] Name of the backend http settings that is unique within an Application Gateway.
  /// [path] Path which should be used as a prefix for all HTTP requests. Null means no path will be prefixed. Default value is null.
  /// [pickHostNameFromBackendAddress] Whether to pick host header should be picked from the host name of the backend server. Default value is false.
  /// [port] The destination port on the backend.
  /// [probe] Probe resource of an application gateway.
  /// [probeEnabled] Whether the probe is enabled. Default value is false.
  /// [protocol] The protocol used to communicate with the backend.
  /// [requestTimeout] Request timeout in seconds. Application Gateway will fail the request if response is not received within RequestTimeout. Acceptable values are from 1 second to 86400 seconds.
  /// [trustedRootCertificates] Array of references to application gateway trusted root certificates.
  ApplicationGatewayBackendHttpSettings({
    this.affinityCookieName,
    this.authenticationCertificates,
    this.connectionDraining,
    this.cookieBasedAffinity,
    this.hostName,
    this.id,
    this.name,
    this.path,
    this.pickHostNameFromBackendAddress,
    this.port,
    this.probe,
    this.probeEnabled,
    this.protocol,
    this.requestTimeout,
    this.trustedRootCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieName': ?affinityCookieName,
      'authenticationCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionDraining': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayConnectionDraining, Map<String, dynamic>>(connectionDraining, (value) => value.toMap()),
      'cookieBasedAffinity': ?cookieBasedAffinity,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'pickHostNameFromBackendAddress': ?pickHostNameFromBackendAddress,
      'port': ?port,
      'probe': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(probe, (value) => value.toMap()),
      'probeEnabled': ?probeEnabled,
      'protocol': ?protocol,
      'requestTimeout': ?requestTimeout,
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewayBackendHttpSettings.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendHttpSettings(
      affinityCookieName: map['affinityCookieName'] == null ? null : (map['affinityCookieName']! as String).input(),
      authenticationCertificates: map['authenticationCertificates'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['authenticationCertificates']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionDraining: map['connectionDraining'] == null ? null : (ApplicationGatewayConnectionDraining.fromMap((map['connectionDraining']! as Map).cast<String, dynamic>())).input(),
      cookieBasedAffinity: map['cookieBasedAffinity'] == null ? null : (map['cookieBasedAffinity']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      pickHostNameFromBackendAddress: map['pickHostNameFromBackendAddress'] == null ? null : (map['pickHostNameFromBackendAddress']! as bool).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      probe: map['probe'] == null ? null : (SubResource.fromMap((map['probe']! as Map).cast<String, dynamic>())).input(),
      probeEnabled: map['probeEnabled'] == null ? null : (map['probeEnabled']! as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout']! as int).input(),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['trustedRootCertificates']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

