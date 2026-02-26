import 'package:pulumi/pulumi.dart';
import 'sub_account_args.dart';

/// Allows creation and management of a Google Cloud Billing Subaccount.
///
/// !> **WARNING:** Deleting this resource will not delete or close the billing subaccount.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subaccount = new gcp.billing.SubAccount("subaccount", {
/// displayName: "My Billing Account",
/// masterBillingAccount: "012345-567890-ABCDEF",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subaccount = gcp.billing.SubAccount("subaccount",
/// display_name="My Billing Account",
/// master_billing_account="012345-567890-ABCDEF")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var subaccount = new Gcp.Billing.SubAccount("subaccount", new()
/// {
/// DisplayName = "My Billing Account",
/// MasterBillingAccount = "012345-567890-ABCDEF",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := billing.NewSubAccount(ctx, "subaccount", &billing.SubAccountArgs{
/// DisplayName:          pulumi.String("My Billing Account"),
/// MasterBillingAccount: pulumi.String("012345-567890-ABCDEF"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.SubAccount;
/// import com.pulumi.gcp.billing.SubAccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var subaccount = new SubAccount("subaccount", SubAccountArgs.builder()
/// .displayName("My Billing Account")
/// .masterBillingAccount("012345-567890-ABCDEF")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// subaccount:
/// type: gcp:billing:SubAccount
/// properties:
/// displayName: My Billing Account
/// masterBillingAccount: 012345-567890-ABCDEF
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// If set to "RENAME_ON_DESTROY" the billing account<span pulumi-lang-nodejs=" displayName
  /// " pulumi-lang-dotnet=" DisplayName
  /// " pulumi-lang-go=" displayName
  /// " pulumi-lang-python=" display_name
  /// " pulumi-lang-yaml=" displayName
  /// " pulumi-lang-java=" displayName
  /// "> display_name
  /// </span>will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// Default is "".
  late final Output<String?> deletionPolicy;

  /// The display name of the billing account.
  late final Output<String> displayName;

  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  late final Output<String> masterBillingAccount;

  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  late final Output<String> name;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the billing account is open, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if the billing account is closed.
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
    this.billingAccountId = Output.createUnknown<String>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.masterBillingAccount = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.open = Output.createUnknown<bool>();
  }
}
