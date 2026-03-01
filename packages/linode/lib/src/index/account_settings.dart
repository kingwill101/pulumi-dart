import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_args.dart';

/// Manages the settings of a Linode account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account-settings).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to change their Linode account settings.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myaccount = new linode.AccountSettings("myaccount", {
///     longviewSubscription: "longview-40",
///     backupsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// myaccount = linode.AccountSettings("myaccount",
///     longview_subscription="longview-40",
///     backups_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myaccount = new Linode.AccountSettings("myaccount", new()
///     {
///         LongviewSubscription = "longview-40",
///         BackupsEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewAccountSettings(ctx, "myaccount", &linode.AccountSettingsArgs{
/// 			LongviewSubscription: pulumi.String("longview-40"),
/// 			BackupsEnabled:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.AccountSettings;
/// import com.pulumi.linode.AccountSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var myaccount = new AccountSettings("myaccount", AccountSettingsArgs.builder()
///             .longviewSubscription("longview-40")
///             .backupsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myaccount:
///     type: linode:AccountSettings
///     properties:
///       longviewSubscription: longview-40
///       backupsEnabled: 'true'
/// ```
///
///
/// ## Additional Results
///
/// * `managed` - Enables monitoring for connectivity, response, and total request time.
///
/// * `object_storage` - A string describing the status of this account’s Object Storage service enrollment.
class AccountSettings extends pulumi.CustomResource {
  /// The account-wide backups default. If true, all Linodes created will automatically be enrolled in the Backups service. If false, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  late final pulumi.Output<bool> backupsEnabled;
  /// Type of interfaces for new Linode instances. Available values are `"legacy_config_only"`, `"legacy_config_default_but_linode_allowed"`, `"linode_default_but_legacy_config_allowed"`, and `"linode_only"`.
  late final pulumi.Output<String> interfacesForNewLinodes;
  /// The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or null for Longview Free.
  late final pulumi.Output<String> longviewSubscription;
  /// The default maintenance policy for this account. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to `"linode/migrate"`. (**Note: v4beta only.**)
  late final pulumi.Output<String> maintenancePolicy;
  /// Enables monitoring for connectivity, response, and total request time.
  late final pulumi.Output<bool> managed;
  /// Enables network helper across all users by default for new Linodes and Linode Configs.
  late final pulumi.Output<bool> networkHelper;
  /// A string describing the status of this account's Object Storage service enrollment.
  late final pulumi.Output<String> objectStorage;

  /// Creates a new [AccountSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSettings]. {@macro pulumi_index_account_settings_account_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSettings(
    String name, {
    AccountSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/accountSettings:AccountSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupsEnabled = registerOutput<bool>('backupsEnabled');
    this.interfacesForNewLinodes = registerOutput<String>('interfacesForNewLinodes');
    this.longviewSubscription = registerOutput<String>('longviewSubscription');
    this.maintenancePolicy = registerOutput<String>('maintenancePolicy');
    this.managed = registerOutput<bool>('managed');
    this.networkHelper = registerOutput<bool>('networkHelper');
    this.objectStorage = registerOutput<String>('objectStorage');
  }
}
