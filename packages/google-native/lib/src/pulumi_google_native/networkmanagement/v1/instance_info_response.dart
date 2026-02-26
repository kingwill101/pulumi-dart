// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine instance.
class InstanceInfoResponse {
  /// Name of a Compute Engine instance.
  final String displayName;

  /// External IP address of the network interface.
  final String externalIp;

  /// Name of the network interface of a Compute Engine instance.
  final String interface;

  /// Internal IP address of the network interface.
  final String internalIp;

  /// Network tags configured on the instance.
  final List<String> networkTags;

  /// URI of a Compute Engine network.
  final String networkUri;

  /// Service account authorized for the instance.
  final String serviceAccount;

  /// URI of a Compute Engine instance.
  final String uri;

  InstanceInfoResponse({
    required this.displayName,
    required this.externalIp,
    required this.interface,
    required this.internalIp,
    required this.networkTags,
    required this.networkUri,
    required this.serviceAccount,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['externalIp'] = externalIp;
    map['interface'] = interface;
    map['internalIp'] = internalIp;
    map['networkTags'] = networkTags;
    map['networkUri'] = networkUri;
    map['serviceAccount'] = serviceAccount;
    map['uri'] = uri;
    return map;
  }

  factory InstanceInfoResponse.fromMap(Map<String, dynamic> map) {
    return InstanceInfoResponse(
      displayName: map['displayName'] as String,
      externalIp: map['externalIp'] as String,
      interface: map['interface'] as String,
      internalIp: map['internalIp'] as String,
      networkTags: (map['networkTags'] as List).cast<String>(),
      networkUri: map['networkUri'] as String,
      serviceAccount: map['serviceAccount'] as String,
      uri: map['uri'] as String,
    );
  }
}
