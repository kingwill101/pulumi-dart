// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Enabler.
class EnablerArgs {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  final Input<List<String>> accountIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  final Input<List<String>> resourceTypes;

  EnablerArgs({
    required this.accountIds,
    this.region,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountIds'] = accountIds;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory EnablerArgs.fromMap(Map<String, dynamic> map) {
    return EnablerArgs(
      accountIds: Input.asInput<List<String>>(map['accountIds']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceTypes: Input.asInput<List<String>>(map['resourceTypes']),
    );
  }
}
