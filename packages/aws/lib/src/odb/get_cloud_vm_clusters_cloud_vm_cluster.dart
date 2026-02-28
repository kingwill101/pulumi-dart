// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClustersCloudVmCluster {
  /// The Amazon Resource Name (ARN) for the cloud vm cluster.
  final String arn;

  /// The ID of the Cloud Exadata Infrastructure.
  final String cloudExadataInfrastructureId;

  /// The display name of the VM cluster.
  final String displayName;

  /// The unique identifier of the cloud vm cluster.
  final String id;

  /// The name of the OCI Resource Anchor.
  final String ociResourceAnchorName;

  /// The HTTPS link to the VM cluster in OCI.
  final String ociUrl;

  /// The OCID of the VM cluster.
  final String ocid;

  /// The ID of the ODB network.
  final String odbNetworkId;

  /// Creates a new [GetCloudVmClustersCloudVmCluster].
  /// [arn] The Amazon Resource Name (ARN) for the cloud vm cluster.
  /// [cloudExadataInfrastructureId] The ID of the Cloud Exadata Infrastructure.
  /// [displayName] The display name of the VM cluster.
  /// [id] The unique identifier of the cloud vm cluster.
  /// [ociResourceAnchorName] The name of the OCI Resource Anchor.
  /// [ociUrl] The HTTPS link to the VM cluster in OCI.
  /// [ocid] The OCID of the VM cluster.
  /// [odbNetworkId] The ID of the ODB network.
  GetCloudVmClustersCloudVmCluster({
    required this.arn,
    required this.cloudExadataInfrastructureId,
    required this.displayName,
    required this.id,
    required this.ociResourceAnchorName,
    required this.ociUrl,
    required this.ocid,
    required this.odbNetworkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['displayName'] = displayName;
    map['id'] = id;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ociUrl'] = ociUrl;
    map['ocid'] = ocid;
    map['odbNetworkId'] = odbNetworkId;
    return map;
  }

  factory GetCloudVmClustersCloudVmCluster.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmCluster(
      arn: map['arn'] as String,
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      odbNetworkId: map['odbNetworkId'] as String,
    );
  }
}
