// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine instance.
class InstanceInfoResponseNetworkmanagementV1beta1 {
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

  /// Creates a new [InstanceInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Compute Engine instance.
  /// [externalIp] External IP address of the network interface.
  /// [interface] Name of the network interface of a Compute Engine instance.
  /// [internalIp] Internal IP address of the network interface.
  /// [networkTags] Network tags configured on the instance.
  /// [networkUri] URI of a Compute Engine network.
  /// [serviceAccount] Service account authorized for the instance.
  /// [uri] URI of a Compute Engine instance.
  InstanceInfoResponseNetworkmanagementV1beta1({
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
    return <String, dynamic>{
      'displayName': displayName,
      'externalIp': externalIp,
      'interface': interface,
      'internalIp': internalIp,
      'networkTags': networkTags,
      'networkUri': networkUri,
      'serviceAccount': serviceAccount,
      'uri': uri,
    };
  }

  factory InstanceInfoResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceInfoResponseNetworkmanagementV1beta1(
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
