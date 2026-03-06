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

  /// Creates a new [GetGatewayResult].
  /// [amazonSideAsn] ASN on the Amazon side of the connection.
  /// [arn] ARN of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [ownerAccountId] AWS Account ID of the gateway.
  /// [tags] A map of tags assigned to the gateway.
  const GetGatewayResult({
    required this.amazonSideAsn,
    required this.arn,
    required this.id,
    required this.name,
    required this.ownerAccountId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': amazonSideAsn,
      'arn': arn,
      'id': id,
      'name': name,
      'ownerAccountId': ownerAccountId,
      'tags': tags,
    };
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

