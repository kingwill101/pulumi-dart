// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Enabler resources.
class EnablerState {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  final pulumi.Input<List<String>>? accountIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [EnablerState].
  /// [accountIds] Set of account IDs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypes] Type of resources to scan.
  EnablerState({
    pulumi.Output<List<String>>? accountIds,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? resourceTypes,
  }) :
      accountIds = pulumi.Input.asOptionalInput<List<String>>(accountIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTypes = pulumi.Input.asOptionalInput<List<String>>(resourceTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'region': ?region,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory EnablerState.fromMap(Map<String, dynamic> map) {
    return EnablerState(
      accountIds: map['accountIds'] == null ? null : pulumi.Output.create<List<String>>((map['accountIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypes'] as List).cast<String>()),
    );
  }
}

