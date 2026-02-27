import 'package:pulumi/pulumi.dart' hide Config;
import 'billing_account_args.dart';

/// This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts). Google Cloud resellers should use the Channel Services APIs, [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create) and [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create). When creating a subaccount, the current authenticated user must have the `billing.accounts.update` IAM permission on the parent account, which is typically given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access). This method will return an error if the parent account has not been provisioned for subaccounts.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class BillingAccount extends CustomResource {
  /// The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  late final Output<String> displayName;

  /// If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.
  late final Output<String> masterBillingAccount;

  /// The resource name of the billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF` would be the resource name for billing account `012345-567890-ABCDEF`.
  late final Output<String> name;

  /// True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.
  late final Output<bool> open;

  /// Optional. The parent to create a billing account from. Format: - organizations/{organization_id} eg organizations/12345678 - billingAccounts/{billing_account_id} eg `billingAccounts/012345-567890-ABCDEF`
  late final Output<String> parent;

  BillingAccount(
    String name, {
    BillingAccountArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbilling/v1:BillingAccount',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.masterBillingAccount = registerOutput<String>('masterBillingAccount');
    this.name = registerOutput<String>('name');
    this.open = registerOutput<bool>('open');
    this.parent = registerOutput<String>('parent');
  }
}
