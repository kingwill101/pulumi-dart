// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGateway.
class GetGatewayResult {
  /// ASN on the Amazon side of the connection.
  final String amazonSideAsn;

  /// ARN of the gateway.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// AWS Account ID of the gateway.
  final String ownerAccountId;

  /// A map of tags assigned to the gateway.
  final Map<String, String> tags;

  GetGatewayResult({
    required this.amazonSideAsn,
    required this.arn,
    required this.id,
    required this.name,
    required this.ownerAccountId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amazonSideAsn'] = amazonSideAsn;
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['ownerAccountId'] = ownerAccountId;
    map['tags'] = tags;
    return map;
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      amazonSideAsn: map['amazonSideAsn'] as String,
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ownerAccountId: map['ownerAccountId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
