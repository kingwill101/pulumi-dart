// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../grant_constraint/grant_constraint.dart';

/// The set of arguments for Grant.
class GrantArgs {
  /// A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html).
  final Input<List<GrantConstraint>>? constraints;

  /// A list of grant tokens to be used when creating the grant. See [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token) for more information about grant tokens.
  final Input<List<String>>? grantCreationTokens;

  /// The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final Input<String> granteePrincipal;

  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.
  final Input<String> keyId;

  /// A friendly name for identifying the grant.
  final Input<String>? name;

  /// A list of operations that the grant permits. The permitted values are: `Decrypt`, `Encrypt`, `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext`, `ReEncryptFrom`, `ReEncryptTo`, `Sign`, `Verify`, `GetPublicKey`, `CreateGrant`, `RetireGrant`, `DescribeKey`, `GenerateDataKeyPair`, or `GenerateDataKeyPairWithoutPlaintext`.
  final Input<List<String>> operations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// If set to false (the default) the grants will be revoked upon deletion, and if set to true the grants will try to be retired upon deletion. Note that retiring grants requires special permissions, hence why we default to revoking grants.
  /// See [RetireGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html) for more information.
  final Input<bool>? retireOnDelete;

  /// The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final Input<String>? retiringPrincipal;

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
      map['constraints'] = Input.mapOptionalInputValue<List<GrantConstraint>,
              List<Map<String, dynamic>>>(
          constraintsValue,
          (value) => Input.encodeList<GrantConstraint, Map<String, dynamic>>(
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
      constraints:
          Input.asOptionalInput<List<GrantConstraint>>(map['constraints']),
      grantCreationTokens:
          Input.asOptionalInput<List<String>>(map['grantCreationTokens']),
      granteePrincipal: Input.asInput<String>(map['granteePrincipal']),
      keyId: Input.asInput<String>(map['keyId']),
      name: Input.asOptionalInput<String>(map['name']),
      operations: Input.asInput<List<String>>(map['operations']),
      region: Input.asOptionalInput<String>(map['region']),
      retireOnDelete: Input.asOptionalInput<bool>(map['retireOnDelete']),
      retiringPrincipal:
          Input.asOptionalInput<String>(map['retiringPrincipal']),
    );
  }
}
