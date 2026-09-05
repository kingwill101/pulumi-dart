// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGateway.
class GetGatewayResult {
  /// ASN on the Amazon side of the connection.
  final String? amazonSideAsn;
  /// ARN of the gateway.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// AWS Account ID of the gateway.
  final String? ownerAccountId;
  /// A map of tags assigned to the gateway.
  final Map<String, String>? tags;

  /// Creates a new [GetGatewayResult].
  /// [amazonSideAsn] ASN on the Amazon side of the connection.
  /// [arn] ARN of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [ownerAccountId] AWS Account ID of the gateway.
  /// [tags] A map of tags assigned to the gateway.
  const GetGatewayResult({
    this.amazonSideAsn,
    this.arn,
    this.id,
    this.name,
    this.ownerAccountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'tags': ?tags,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
