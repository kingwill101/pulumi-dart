import 'package:pulumi/pulumi.dart';
import 'sub_account_args.dart';

/// Allows creation and management of a Google Cloud Billing Subaccount.
///
/// !> **WARNING:** Deleting this resource will not delete or close the billing subaccount.
///
///
///
/// ## Import
///
/// Billing Subaccounts can be imported using any of these accepted formats:
///
/// * `billingAccounts/{billing_account_id}`
///
/// When using the `pulumi import` command, Billing Subaccounts can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/subAccount:SubAccount default billingAccounts/{billing_account_id}
/// ```
class SubAccount extends CustomResource {
  /// The billing account id.
  late final Output<String> billingAccountId;

  /// If set to "RENAME_ON_DESTROY" the billing account display_name
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// Default is "".
  late final Output<String?> deletionPolicy;

  /// The display name of the billing account.
  late final Output<String> displayName;

  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  late final Output<String> masterBillingAccount;

  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  late final Output<String> name;

  /// `true` if the billing account is open, `false` if the billing account is closed.
  late final Output<bool> open;

  SubAccount(
    String name, {
    SubAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:billing/subAccount:SubAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.masterBillingAccount = registerOutput<String>('masterBillingAccount');
    this.name = registerOutput<String>('name');
    this.open = registerOutput<bool>('open');
  }
}
