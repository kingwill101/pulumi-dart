// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access profile for the Fleet hub API server.
class APIServerAccessProfile {
  /// Whether to create the Fleet hub as a private cluster or not.
  final pulumi.Input<bool>? enablePrivateCluster;
  /// Whether to enable apiserver vnet integration for the Fleet hub or not.
  final pulumi.Input<bool>? enableVnetIntegration;
  /// The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [APIServerAccessProfile].
  /// [enablePrivateCluster] Whether to create the Fleet hub as a private cluster or not.
  /// [enableVnetIntegration] Whether to enable apiserver vnet integration for the Fleet hub or not.
  /// [subnetId] The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.
  APIServerAccessProfile({
    this.enablePrivateCluster,
    this.enableVnetIntegration,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateCluster': ?enablePrivateCluster,
      'enableVnetIntegration': ?enableVnetIntegration,
      'subnetId': ?subnetId,
    };
  }

  factory APIServerAccessProfile.fromMap(Map<String, dynamic> map) {
    return APIServerAccessProfile(
      enablePrivateCluster: map['enablePrivateCluster'] == null ? null : (map['enablePrivateCluster']! as bool).input(),
      enableVnetIntegration: map['enableVnetIntegration'] == null ? null : (map['enableVnetIntegration']! as bool).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

