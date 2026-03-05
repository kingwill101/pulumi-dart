// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access profile for the Fleet hub API server.
class APIServerAccessProfileResponse {
  /// Whether to create the Fleet hub as a private cluster or not.
  final pulumi.Input<bool>? enablePrivateCluster;
  /// Whether to enable apiserver vnet integration for the Fleet hub or not.
  final pulumi.Input<bool>? enableVnetIntegration;
  /// The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [APIServerAccessProfileResponse].
  /// [enablePrivateCluster] Whether to create the Fleet hub as a private cluster or not.
  /// [enableVnetIntegration] Whether to enable apiserver vnet integration for the Fleet hub or not.
  /// [subnetId] The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.
  APIServerAccessProfileResponse({
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

  factory APIServerAccessProfileResponse.fromMap(Map<String, dynamic> map) {
    return APIServerAccessProfileResponse(
      enablePrivateCluster: (() { final guardedValue = map['enablePrivateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVnetIntegration: (() { final guardedValue = map['enableVnetIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

