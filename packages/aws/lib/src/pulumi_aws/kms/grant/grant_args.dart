// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../grant_constraint/grant_constraint.dart';

/// The set of arguments for Grant.
class GrantArgs {
  /// A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html).
  final pulumi.Input<List<GrantConstraint>>? constraints;

  /// A list of grant tokens to be used when creating the grant. See [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token) for more information about grant tokens.
  final pulumi.Input<List<String>>? grantCreationTokens;

  /// The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final pulumi.Input<String> granteePrincipal;

  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.
  final pulumi.Input<String> keyId;

  /// A friendly name for identifying the grant.
  final pulumi.Input<String>? name;

  /// A list of operations that the grant permits. The permitted values are: `Decrypt`, `Encrypt`, `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext`, `ReEncryptFrom`, `ReEncryptTo`, `Sign`, `Verify`, `GetPublicKey`, `CreateGrant`, `RetireGrant`, `DescribeKey`, `GenerateDataKeyPair`, or `GenerateDataKeyPairWithoutPlaintext`.
  final pulumi.Input<List<String>> operations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// If set to false (the default) the grants will be revoked upon deletion, and if set to true the grants will try to be retired upon deletion. Note that retiring grants requires special permissions, hence why we default to revoking grants.
  /// See [RetireGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html) for more information.
  final pulumi.Input<bool>? retireOnDelete;

  /// The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final pulumi.Input<String>? retiringPrincipal;

  GrantArgs({
    this.constraints,
    this.grantCreationTokens,
    required this.granteePrincipal,
    required this.keyId,
    this.name,
    required this.operations,
    this.region,
    this.retireOnDelete,
    this.retiringPrincipal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final constraintsValue = constraints;
    if (constraintsValue != null) {
      map['constraints'] = pulumi.Input.mapOptionalInputValue<
              List<GrantConstraint>, List<Map<String, dynamic>>>(
          constraintsValue,
          (value) =>
              pulumi.Input.encodeList<GrantConstraint, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final grantCreationTokensValue = grantCreationTokens;
    if (grantCreationTokensValue != null) {
      map['grantCreationTokens'] = grantCreationTokensValue;
    }
    map['granteePrincipal'] = granteePrincipal;
    map['keyId'] = keyId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['operations'] = operations;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retireOnDeleteValue = retireOnDelete;
    if (retireOnDeleteValue != null) {
      map['retireOnDelete'] = retireOnDeleteValue;
    }
    final retiringPrincipalValue = retiringPrincipal;
    if (retiringPrincipalValue != null) {
      map['retiringPrincipal'] = retiringPrincipalValue;
    }
    return map;
  }

  factory GrantArgs.fromMap(Map<String, dynamic> map) {
    return GrantArgs(
      constraints: pulumi.Input.asOptionalInput<List<GrantConstraint>>(
          map['constraints']),
      grantCreationTokens: pulumi.Input.asOptionalInput<List<String>>(
          map['grantCreationTokens']),
      granteePrincipal: pulumi.Input.asInput<String>(map['granteePrincipal']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      operations: pulumi.Input.asInput<List<String>>(map['operations']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retireOnDelete: pulumi.Input.asOptionalInput<bool>(map['retireOnDelete']),
      retiringPrincipal:
          pulumi.Input.asOptionalInput<String>(map['retiringPrincipal']),
    );
  }
}
