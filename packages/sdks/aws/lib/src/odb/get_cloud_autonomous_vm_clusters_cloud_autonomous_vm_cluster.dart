// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudAutonomousVmClustersCloudAutonomousVmCluster {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final pulumi.Input<String> arn;
  /// Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// The display name of the Autonomous VM cluster.
  final pulumi.Input<String> displayName;
  /// The unique identifier of the cloud autonomous vm cluster.
  final pulumi.Input<String> id;
  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  final pulumi.Input<String> ociResourceAnchorName;
  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  final pulumi.Input<String> ociUrl;
  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final pulumi.Input<String> ocid;
  /// The unique identifier of the ODB network associated with this Autonomous VM cluster.
  final pulumi.Input<String> odbNetworkId;

  /// Creates a new [GetCloudAutonomousVmClustersCloudAutonomousVmCluster].
  /// [arn] The Amazon Resource Name (ARN) for the Exadata infrastructure.
  /// [cloudExadataInfrastructureId] Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  /// [displayName] The display name of the Autonomous VM cluster.
  /// [id] The unique identifier of the cloud autonomous vm cluster.
  /// [ociResourceAnchorName] The name of the OCI resource anchor associated with this Autonomous VM cluster.
  /// [ociUrl] The URL for accessing the OCI console page for this Autonomous VM cluster.
  /// [ocid] The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  /// [odbNetworkId] The unique identifier of the ODB network associated with this Autonomous VM cluster.
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
    return <String, dynamic>{
      'arn': arn,
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'displayName': displayName,
      'id': id,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'odbNetworkId': odbNetworkId,
    };
  }

  factory GetCloudAutonomousVmClustersCloudAutonomousVmCluster.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClustersCloudAutonomousVmCluster(
      arn: (map['arn'] as String).input(),
      cloudExadataInfrastructureId: (map['cloudExadataInfrastructureId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      ociResourceAnchorName: (map['ociResourceAnchorName'] as String).input(),
      ociUrl: (map['ociUrl'] as String).input(),
      ocid: (map['ocid'] as String).input(),
      odbNetworkId: (map['odbNetworkId'] as String).input(),
    );
  }
}

