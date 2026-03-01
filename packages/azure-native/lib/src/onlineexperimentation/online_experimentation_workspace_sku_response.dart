// ignore_for_file: unused_element, unnecessary_cast


/// The SKU (Stock Keeping Unit) assigned to this resource.
class OnlineExperimentationWorkspaceSkuResponse {
  /// The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  final String name;
  /// The name of the SKU tier
  final String tier;

  /// Creates a new [OnlineExperimentationWorkspaceSkuResponse].
  /// [name] The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  /// [tier] The name of the SKU tier
  OnlineExperimentationWorkspaceSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory OnlineExperimentationWorkspaceSkuResponse.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceSkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

