// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  final pulumi.Input<String>? amazonSideAsn;
  /// The ARN of the gateway.
  final pulumi.Input<String>? arn;
  /// The name of the connection.
  final pulumi.Input<String>? name;
  /// AWS Account ID of the gateway.
  final pulumi.Input<String>? ownerAccountId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GatewayState].
  /// [amazonSideAsn] The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  /// [arn] The ARN of the gateway.
  /// [name] The name of the connection.
  /// [ownerAccountId] AWS Account ID of the gateway.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  GatewayState({
    this.amazonSideAsn,
    this.arn,
    this.name,
    this.ownerAccountId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      amazonSideAsn: map['amazonSideAsn'] == null ? null : ((map['amazonSideAsn'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : ((map['ownerAccountId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

