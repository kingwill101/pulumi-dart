// ignore_for_file: unused_element, unnecessary_cast


/// For display only. Metadata associated with a VPC connector.
class VpcConnectorInfoResponseNetworkmanagementV1beta1 {
  /// Name of a VPC connector.
  final String displayName;
  /// Location in which the VPC connector is deployed.
  final String location;
  /// URI of a VPC connector.
  final String uri;

  /// Creates a new [VpcConnectorInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a VPC connector.
  /// [location] Location in which the VPC connector is deployed.
  /// [uri] URI of a VPC connector.
  VpcConnectorInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.location,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': location,
      'uri': uri,
    };
  }

  factory VpcConnectorInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return VpcConnectorInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      uri: map['uri'] as String,
    );
  }
}

