import 'package:pulumi/pulumi.dart';
import 'account_alias_args.dart';

/// > **Note:** There is only a single account alias per AWS account.
///
/// Manages the account alias for the AWS Account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the current Account Alias using the `account_alias`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accountAlias:AccountAlias alias my-account-alias
/// ```
class AccountAlias extends CustomResource {
  /// The account alias
  late final Output<String> accountAlias;

  AccountAlias(
    String name, {
    AccountAliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountAlias:AccountAlias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountAlias = registerOutput<String>('accountAlias');
  }
}
