// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConsulServiceDiscovery.
class GetConsulServiceDiscoveryResult {
  final String? addressRealm;
  final String consulSdJson;
  final bool? credentialUpdate;
  final String? encodedToken;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? jmesPathQuery;
  final String? minimumMonitors;
  final int port;
  final bool? rejectUnauthorized;
  final String? trustCa;
  final String? type;
  final String? undetectableAction;
  final String? updateInterval;
  final String uri;

  /// Creates a new [GetConsulServiceDiscoveryResult].
  /// [addressRealm] Optional.
  /// [consulSdJson] Required.
  /// [credentialUpdate] Optional.
  /// [encodedToken] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jmesPathQuery] Optional.
  /// [minimumMonitors] Optional.
  /// [port] Required.
  /// [rejectUnauthorized] Optional.
  /// [trustCa] Optional.
  /// [type] Optional.
  /// [undetectableAction] Optional.
  /// [updateInterval] Optional.
  /// [uri] Required.
  GetConsulServiceDiscoveryResult({
    this.addressRealm,
    required this.consulSdJson,
    this.credentialUpdate,
    this.encodedToken,
    required this.id,
    this.jmesPathQuery,
    this.minimumMonitors,
    required this.port,
    this.rejectUnauthorized,
    this.trustCa,
    this.type,
    this.undetectableAction,
    this.updateInterval,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRealm': ?addressRealm,
      'consulSdJson': consulSdJson,
      'credentialUpdate': ?credentialUpdate,
      'encodedToken': ?encodedToken,
      'id': id,
      'jmesPathQuery': ?jmesPathQuery,
      'minimumMonitors': ?minimumMonitors,
      'port': port,
      'rejectUnauthorized': ?rejectUnauthorized,
      'trustCa': ?trustCa,
      'type': ?type,
      'undetectableAction': ?undetectableAction,
      'updateInterval': ?updateInterval,
      'uri': uri,
    };
  }

  factory GetConsulServiceDiscoveryResult.fromMap(Map<String, dynamic> map) {
    return GetConsulServiceDiscoveryResult(
      addressRealm: map['addressRealm'] == null ? null : map['addressRealm'] as String,
      consulSdJson: map['consulSdJson'] as String,
      credentialUpdate: map['credentialUpdate'] == null ? null : map['credentialUpdate'] as bool,
      encodedToken: map['encodedToken'] == null ? null : map['encodedToken'] as String,
      id: map['id'] as String,
      jmesPathQuery: map['jmesPathQuery'] == null ? null : map['jmesPathQuery'] as String,
      minimumMonitors: map['minimumMonitors'] == null ? null : map['minimumMonitors'] as String,
      port: map['port'] as int,
      rejectUnauthorized: map['rejectUnauthorized'] == null ? null : map['rejectUnauthorized'] as bool,
      trustCa: map['trustCa'] == null ? null : map['trustCa'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      undetectableAction: map['undetectableAction'] == null ? null : map['undetectableAction'] as String,
      updateInterval: map['updateInterval'] == null ? null : map['updateInterval'] as String,
      uri: map['uri'] as String,
    );
  }
}

