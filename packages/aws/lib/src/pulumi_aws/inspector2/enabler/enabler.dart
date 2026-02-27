import 'package:pulumi/pulumi.dart';
import 'enabler_args.dart';

/// Resource for enabling Amazon Inspector resource scans.
///
/// This resource must be created in the Organization's Administrator Account.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### For the Calling Account
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Enabler using using `account_ids` and `region_types` formatted as `[account_id1]:[account_id2]:...-[resource_type1]:[resource_type2]:...`, where `account_ids` are sorted in ascending order and `resource_types` are sorted in alphabetical order. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/enabler:Enabler example 123456789012:234567890123-EC2:ECR
/// ```
class Enabler extends CustomResource {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  late final Output<List<String>> accountIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  late final Output<List<String>> resourceTypes;

  Enabler(
    String name, {
    EnablerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/enabler:Enabler',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountIds = registerOutput<List<String>>('accountIds');
    this.region = registerOutput<String>('region');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
  }
}
