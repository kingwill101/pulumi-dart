// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClustersCloudVmCluster {
  /// ARN for the cloud vm cluster.
  final pulumi.Input<String> arn;
  /// ID of the Cloud Exadata Infrastructure.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// Display name of the VM cluster.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the cloud vm cluster.
  final pulumi.Input<String> id;
  /// Name of the OCI Resource Anchor.
  final pulumi.Input<String> ociResourceAnchorName;
  /// HTTPS link to the VM cluster in OCI.
  final pulumi.Input<String> ociUrl;
  /// OCID of the VM cluster.
  final pulumi.Input<String> ocid;
  /// ID of the ODB network.
  final pulumi.Input<String> odbNetworkId;

  /// Creates a new [GetCloudVmClustersCloudVmCluster].
  /// [arn] ARN for the cloud vm cluster.
  /// [cloudExadataInfrastructureId] ID of the Cloud Exadata Infrastructure.
  /// [displayName] Display name of the VM cluster.
  /// [id] Unique identifier of the cloud vm cluster.
  /// [ociResourceAnchorName] Name of the OCI Resource Anchor.
  /// [ociUrl] HTTPS link to the VM cluster in OCI.
  /// [ocid] OCID of the VM cluster.
  /// [odbNetworkId] ID of the ODB network.
  const GetCloudVmClustersCloudVmCluster({
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

  factory GetCloudVmClustersCloudVmCluster.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmCluster(
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
