// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGlobalNetwork.
class GetGlobalNetworkResult {
  /// ARN of the global network.
  final String arn;

  /// Description of the global network.
  final String description;
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Map of resource tags.
  final Map<String, String> tags;

  GetGlobalNetworkResult({
    required this.arn,
    required this.description,
    required this.globalNetworkId,
    required this.id,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['tags'] = tags;
    return map;
  }

  factory GetGlobalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
