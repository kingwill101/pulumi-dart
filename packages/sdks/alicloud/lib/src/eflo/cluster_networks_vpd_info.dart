// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworksVpdInfo {
  /// VPC ID
  final pulumi.Input<String>? vpdId;
  /// List of cluster subnet ID
  final pulumi.Input<List<String>>? vpdSubnets;

  /// Creates a new [ClusterNetworksVpdInfo].
  /// [vpdId] VPC ID
  /// [vpdSubnets] List of cluster subnet ID
  ClusterNetworksVpdInfo({
    this.vpdId,
    this.vpdSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpdId': ?vpdId,
      'vpdSubnets': ?vpdSubnets,
    };
  }

  factory ClusterNetworksVpdInfo.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksVpdInfo(
      vpdId: map['vpdId'] == null ? null : (map['vpdId'] as String).input(),
      vpdSubnets: map['vpdSubnets'] == null ? null : ((map['vpdSubnets'] as List).cast<String>()).input(),
    );
  }
}

