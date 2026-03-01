// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector2_enabler_enabler_args_doc}
/// The set of arguments for Enabler.
/// {@endtemplate}
/// {@macro pulumi_inspector2_enabler_enabler_args_doc}
class EnablerArgs {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  final pulumi.Input<List<String>> accountIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [EnablerArgs].
  /// [accountIds] Set of account IDs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypes] Type of resources to scan.
  EnablerArgs({
    required pulumi.Output<List<String>> accountIds,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> resourceTypes,
  }) :
      accountIds = pulumi.Input.asInput<List<String>>(accountIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTypes = pulumi.Input.asInput<List<String>>(resourceTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': accountIds,
      'region': ?region,
      'resourceTypes': resourceTypes,
    };
  }

  factory EnablerArgs.fromMap(Map<String, dynamic> map) {
    return EnablerArgs(
      accountIds: pulumi.Output.create<List<String>>((map['accountIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceTypes: pulumi.Output.create<List<String>>((map['resourceTypes'] as List).cast<String>()),
    );
  }
}

