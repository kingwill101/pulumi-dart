// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkRule.
class GetVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The resource identifier for the subnet.
  final String subnetId;
  /// The resource type.
  final String type;

  /// Creates a new [GetVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet.
  /// [type] The resource type.
  const GetVirtualNetworkRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.subnetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'subnetId': subnetId,
      'type': type,
    };
  }

  factory GetVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
      type: map['type'] as String,
    );
  }
}

