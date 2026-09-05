// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Enabler resources.
class EnablerState {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  final pulumi.Input<List<String>?>? accountIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  final pulumi.Input<List<String>?>? resourceTypes;

  /// Creates a new [EnablerState].
  /// [accountIds] Set of account IDs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypes] Type of resources to scan.
  const EnablerState({
    this.accountIds,
    this.region,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'region': ?region,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory EnablerState.fromMap(Map<String, dynamic> map) {
    return EnablerState(
      accountIds: (() { final guardedValue = map['accountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
