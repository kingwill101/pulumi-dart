// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegatedAdminAccount resources.
class DelegatedAdminAccountState {
  /// Account to enable as delegated admin account.
  final pulumi.Input<String>? accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of this delegated admin account.
  final pulumi.Input<String>? relationshipStatus;

  /// Creates a new [DelegatedAdminAccountState].
  /// [accountId] Account to enable as delegated admin account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationshipStatus] Status of this delegated admin account.
  DelegatedAdminAccountState({
    this.accountId,
    this.region,
    this.relationshipStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'region': ?region,
      'relationshipStatus': ?relationshipStatus,
    };
  }

  factory DelegatedAdminAccountState.fromMap(Map<String, dynamic> map) {
    return DelegatedAdminAccountState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      relationshipStatus: map['relationshipStatus'] == null ? null : (map['relationshipStatus'] as String).input(),
    );
  }
}

