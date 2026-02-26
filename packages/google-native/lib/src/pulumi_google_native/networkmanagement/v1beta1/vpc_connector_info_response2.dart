// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a VPC connector.
class VpcConnectorInfoResponse2 {
  /// Name of a VPC connector.
  final String displayName;

  /// Location in which the VPC connector is deployed.
  final String location;

  /// URI of a VPC connector.
  final String uri;

  VpcConnectorInfoResponse2({
    required this.displayName,
    required this.location,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['location'] = location;
    map['uri'] = uri;
    return map;
  }

  factory VpcConnectorInfoResponse2.fromMap(Map<String, dynamic> map) {
    return VpcConnectorInfoResponse2(
      displayName: map['displayName'] as String,
      location: map['location'] as String,
      uri: map['uri'] as String,
    );
  }
}
