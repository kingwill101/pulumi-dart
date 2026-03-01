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
    pulumi.Output<String>? amazonSideAsn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      amazonSideAsn = pulumi.Input.asOptionalInput<String>(amazonSideAsn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      amazonSideAsn: map['amazonSideAsn'] == null ? null : pulumi.Output.create<String>(map['amazonSideAsn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

