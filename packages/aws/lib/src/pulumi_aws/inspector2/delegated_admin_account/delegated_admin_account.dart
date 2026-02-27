import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_admin_account_args.dart';

/// Resource for managing an Amazon Inspector Delegated Admin Account.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Delegated Admin Account using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount example 123456789012
/// ```
class DelegatedAdminAccount extends pulumi.CustomResource {
  /// Account to enable as delegated admin account.
  late final pulumi.Output<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of this delegated admin account.
  late final pulumi.Output<String> relationshipStatus;

  DelegatedAdminAccount(
    String name, {
    DelegatedAdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/delegatedAdminAccount:DelegatedAdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
  }
}
