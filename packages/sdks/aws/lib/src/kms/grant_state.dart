// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_constraint.dart';

/// Input properties used for looking up and filtering Grant resources.
class GrantState {
  /// A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html).
  final pulumi.Input<List<GrantConstraint>?>? constraints;
  /// A list of grant tokens to be used when creating the grant. See [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token) for more information about grant tokens.
  final pulumi.Input<List<String>?>? grantCreationTokens;
  /// The unique identifier for the grant.
  final pulumi.Input<String?>? grantId;
  /// The grant token for the created grant. For more information, see [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token).
  final pulumi.Input<String?>? grantToken;
  /// The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final pulumi.Input<String?>? granteePrincipal;
  /// Unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the ARN of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.
  final pulumi.Input<String?>? keyId;
  /// A friendly name for identifying the grant.
  final pulumi.Input<String?>? name;
  /// A list of operations that the grant permits. The permitted values are: `Decrypt`, `Encrypt`, `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext`, `ReEncryptFrom`, `ReEncryptTo`, `Sign`, `Verify`, `GetPublicKey`, `CreateGrant`, `RetireGrant`, `DescribeKey`, `GenerateDataKeyPair`, or `GenerateDataKeyPairWithoutPlaintext`.
  final pulumi.Input<List<String>?>? operations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// If set to false (the default) the grants will be revoked upon deletion, and if set to true the grants will try to be retired upon deletion. Note that retiring grants requires special permissions, hence why we default to revoking grants.
  /// See [RetireGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html) for more information.
  final pulumi.Input<bool?>? retireOnDelete;
  /// The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  final pulumi.Input<String?>? retiringPrincipal;

  /// Creates a new [GrantState].
  /// [constraints] A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see [Encryption Context](https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html).
  /// [grantCreationTokens] A list of grant tokens to be used when creating the grant. See [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token) for more information about grant tokens.
  /// [grantId] The unique identifier for the grant.
  /// [grantToken] The grant token for the created grant. For more information, see [Grant Tokens](https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token).
  /// [granteePrincipal] The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  /// [keyId] Unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the ARN of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.
  /// [name] A friendly name for identifying the grant.
  /// [operations] A list of operations that the grant permits. The permitted values are: `Decrypt`, `Encrypt`, `GenerateDataKey`, `GenerateDataKeyWithoutPlaintext`, `ReEncryptFrom`, `ReEncryptTo`, `Sign`, `Verify`, `GetPublicKey`, `CreateGrant`, `RetireGrant`, `DescribeKey`, `GenerateDataKeyPair`, or `GenerateDataKeyPairWithoutPlaintext`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retireOnDelete] If set to false (the default) the grants will be revoked upon deletion, and if set to true the grants will try to be retired upon deletion. Note that retiring grants requires special permissions, hence why we default to revoking grants.
  /// [retiringPrincipal] The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, the providers's state may not always be refreshed to reflect what is true in AWS.
  const GrantState({
    this.constraints,
    this.grantCreationTokens,
    this.grantId,
    this.grantToken,
    this.granteePrincipal,
    this.keyId,
    this.name,
    this.operations,
    this.region,
    this.retireOnDelete,
    this.retiringPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?pulumi.Input.mapOptionalInputValue<List<GrantConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GrantConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'grantCreationTokens': ?grantCreationTokens,
      'grantId': ?grantId,
      'grantToken': ?grantToken,
      'granteePrincipal': ?granteePrincipal,
      'keyId': ?keyId,
      'name': ?name,
      'operations': ?operations,
      'region': ?region,
      'retireOnDelete': ?retireOnDelete,
      'retiringPrincipal': ?retiringPrincipal,
    };
  }

  factory GrantState.fromMap(Map<String, dynamic> map) {
    return GrantState(
      constraints: (() { final guardedValue = map['constraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrantConstraint>(guardedValue, (value) => GrantConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      grantCreationTokens: (() { final guardedValue = map['grantCreationTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      grantId: (() { final guardedValue = map['grantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantToken: (() { final guardedValue = map['grantToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      granteePrincipal: (() { final guardedValue = map['granteePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retireOnDelete: (() { final guardedValue = map['retireOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retiringPrincipal: (() { final guardedValue = map['retiringPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
