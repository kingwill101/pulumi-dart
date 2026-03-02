// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworksOdbNetwork {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final pulumi.Input<String> arn;
  /// Display name for the network resource.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the odb network resource.
  final pulumi.Input<String> id;
  /// The unique identifier of the OCI network anchor for the ODB network.
  final pulumi.Input<String> ociNetworkAnchorId;
  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final pulumi.Input<String> ociVcnId;
  /// The URL of the OCI VCN for the ODB network.
  final pulumi.Input<String> ociVcnUrl;

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
      arn: (map['arn'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      ociNetworkAnchorId: (map['ociNetworkAnchorId'] as String).input(),
      ociVcnId: (map['ociVcnId'] as String).input(),
      ociVcnUrl: (map['ociVcnUrl'] as String).input(),
    );
  }
}

