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

  /// Creates a new [GetNetworksOdbNetwork].
  /// [arn] Amazon Resource Name (ARN) of the odb network resource.
  /// [displayName] Display name for the network resource.
  /// [id] Unique identifier of the odb network resource.
  /// [ociNetworkAnchorId] The unique identifier of the OCI network anchor for the ODB network.
  /// [ociVcnId] The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  /// [ociVcnUrl] The URL of the OCI VCN for the ODB network.
  GetNetworksOdbNetwork({
    required this.arn,
    required this.displayName,
    required this.id,
    required this.ociNetworkAnchorId,
    required this.ociVcnId,
    required this.ociVcnUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'displayName': displayName,
      'id': id,
      'ociNetworkAnchorId': ociNetworkAnchorId,
      'ociVcnId': ociVcnId,
      'ociVcnUrl': ociVcnUrl,
    };
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

