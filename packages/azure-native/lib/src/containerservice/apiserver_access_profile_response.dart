// ignore_for_file: unused_element, unnecessary_cast


/// Access profile for the Fleet hub API server.
class APIServerAccessProfileResponse {
  /// Whether to create the Fleet hub as a private cluster or not.
  final bool? enablePrivateCluster;
  /// Whether to enable apiserver vnet integration for the Fleet hub or not.
  final bool? enableVnetIntegration;
  /// The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.
  final String? subnetId;

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
      enablePrivateCluster: map['enablePrivateCluster'] == null ? null : map['enablePrivateCluster'] as bool,
      enableVnetIntegration: map['enableVnetIntegration'] == null ? null : map['enableVnetIntegration'] as bool,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

