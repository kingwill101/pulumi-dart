// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudAutonomousVmClustersCloudAutonomousVmCluster {
  /// Amazon Resource Name (ARN) for the Exadata infrastructure.
  final pulumi.Input<String> arn;
  /// Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// Display name of the Autonomous VM cluster.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the cloud autonomous vm cluster.
  final pulumi.Input<String> id;
  /// Name of the OCI resource anchor associated with this Autonomous VM cluster.
  final pulumi.Input<String> ociResourceAnchorName;
  /// URL for accessing the OCI console page for this Autonomous VM cluster.
  final pulumi.Input<String> ociUrl;
  /// Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final pulumi.Input<String> ocid;
  /// Unique identifier of the ODB network associated with this Autonomous VM cluster.
  final pulumi.Input<String> odbNetworkId;

  /// Creates a new [GetCloudAutonomousVmClustersCloudAutonomousVmCluster].
  /// [arn] Amazon Resource Name (ARN) for the Exadata infrastructure.
  /// [cloudExadataInfrastructureId] Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  /// [displayName] Display name of the Autonomous VM cluster.
  /// [id] Unique identifier of the cloud autonomous vm cluster.
  /// [ociResourceAnchorName] Name of the OCI resource anchor associated with this Autonomous VM cluster.
  /// [ociUrl] URL for accessing the OCI console page for this Autonomous VM cluster.
  /// [ocid] Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM cluster.
  const GetCloudAutonomousVmClustersCloudAutonomousVmCluster({
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
      arn: pulumi.Input.fromValue(map['arn'] as String),
      cloudExadataInfrastructureId: pulumi.Input.fromValue(map['cloudExadataInfrastructureId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ociResourceAnchorName: pulumi.Input.fromValue(map['ociResourceAnchorName'] as String),
      ociUrl: pulumi.Input.fromValue(map['ociUrl'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      odbNetworkId: pulumi.Input.fromValue(map['odbNetworkId'] as String),
    );
  }
}
