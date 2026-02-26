// ignore_for_file: unused_element, unnecessary_cast

class GetNetworksOdbNetwork {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final String arn;

  /// Display name for the network resource.
  final String displayName;

  /// Unique identifier of the odb network resource.
  final String id;

  /// The unique identifier of the OCI network anchor for the ODB network.
  final String ociNetworkAnchorId;

  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final String ociVcnId;

  /// The URL of the OCI VCN for the ODB network.
  final String ociVcnUrl;

  GetNetworksOdbNetwork({
    required this.arn,
    required this.displayName,
    required this.id,
    required this.ociNetworkAnchorId,
    required this.ociVcnId,
    required this.ociVcnUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['displayName'] = displayName;
    map['id'] = id;
    map['ociNetworkAnchorId'] = ociNetworkAnchorId;
    map['ociVcnId'] = ociVcnId;
    map['ociVcnUrl'] = ociVcnUrl;
    return map;
  }

  factory GetNetworksOdbNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworksOdbNetwork(
      arn: map['arn'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      ociNetworkAnchorId: map['ociNetworkAnchorId'] as String,
      ociVcnId: map['ociVcnId'] as String,
      ociVcnUrl: map['ociVcnUrl'] as String,
    );
  }
}
