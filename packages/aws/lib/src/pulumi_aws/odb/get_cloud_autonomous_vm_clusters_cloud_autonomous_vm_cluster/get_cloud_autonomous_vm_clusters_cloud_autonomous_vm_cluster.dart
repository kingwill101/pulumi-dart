// ignore_for_file: unused_element, unnecessary_cast

class GetCloudAutonomousVmClustersCloudAutonomousVmCluster {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final String arn;

  /// Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  final String cloudExadataInfrastructureId;

  /// The display name of the Autonomous VM cluster.
  final String displayName;

  /// The unique identifier of the cloud autonomous vm cluster.
  final String id;

  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  final String ociResourceAnchorName;

  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  final String ociUrl;

  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final String ocid;

  /// The unique identifier of the ODB network associated with this Autonomous VM cluster.
  final String odbNetworkId;

  GetCloudAutonomousVmClustersCloudAutonomousVmCluster({
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

  factory GetCloudAutonomousVmClustersCloudAutonomousVmCluster.fromMap(
      Map<String, dynamic> map) {
    return GetCloudAutonomousVmClustersCloudAutonomousVmCluster(
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
